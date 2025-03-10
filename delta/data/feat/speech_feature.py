# Copyright (C) 2017 Beijing Didi Infinity Technology and Development Co.,Ltd.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
''' speech feat entrypoint unittest'''
import os

import librosa
import numpy as np
import tensorflow as tf
from absl import logging

from delta.data.feat import speech_ops
from delta.data.feat import python_speech_features as psf


#pylint: disable=too-many-locals
def extract_filterbank(*args, **kwargs):
  ''' tensorflow fbank feat '''
  winlen = kwargs.get('winlen')
  winstep = kwargs.get('winstep')
  feature_size = kwargs.get('feature_size')
  sr = kwargs.get('sr')  #pylint: disable=invalid-name
  nfft = kwargs.get('nfft')
  dry_run = kwargs.get('dry_run')
  del nfft

  graph = tf.Graph()
  #pylint: disable=not-context-manager
  with graph.as_default():
    # fbank
    params = speech_ops.speech_params(
        sr=sr,
        bins=feature_size,
        add_delta_deltas=False,
        audio_frame_length=winlen,
        audio_frame_step=winstep)

    filepath = tf.placeholder(dtype=tf.string, shape=[], name='wavpath')
    waveforms, sample_rate = speech_ops.read_wav(filepath, params)
    del sample_rate
    fbank = speech_ops.extract_feature(waveforms, params)

  sess = tf.Session(graph=graph)

  for wavpath in args:
    savepath = os.path.splitext(wavpath)[0] + '.npy'
    logging.debug('input: {}, output: {}'.format(wavpath, savepath))

    feat = sess.run(fbank, feed_dict={'wavpath:0': wavpath})

    # save feat
    if dry_run:
      logging.info('save feat: path {} shape:{} dtype:{}'.format(
          savepath, feat.shape, feat.dtype))
    else:
      np.save(savepath, feat)

  sess.close()


def add_delta_delta(feat, feat_size, order=2):
  ''' add delta detla '''
  graph = tf.Graph()
  #pylint: disable=not-context-manager
  with graph.as_default():
    fbank = tf.placeholder(
        dtype=tf.float32, shape=[None, feat_size, 1], name='fbank')
    feat_with_delta_delta = speech_ops.delta_delta(fbank, order=order)

  sess = tf.Session(graph=graph)
  feat = sess.run(feat_with_delta_delta, feed_dict={'fbank:0': feat})
  sess.close()
  return feat


#pylint: disable=invalid-name
def load_wav(wavpath, sr=8000):
  '''
  audio:
    np.float32, shape [None], sample in [-1, 1], using librosa.load
    np.int16, shape [None], sample in [-32768, 32767], using scipy.io.wavfile
    np.float32, shape[None, audio_channel], sample int [-1, 1], using tf.DecodeWav

  return
    sr: sample rate
    audio: [-1, 1], same to tf.DecodeWav
  '''
  #from scipy.io import wavfile
  #sample_rate, audio = wavfile.read(wavpath)

  #samples, sample_rate = librosa.load(wavpath, sr=sr)

  with tf.Session() as sess:
    params = speech_ops.speech_params(sr=sr, audio_desired_samples=-1)
    t_wavpath = tf.placeholder(dtype=tf.string)
    t_audio, t_sample_rate = speech_ops.read_wav(t_wavpath, params)

    audio, sample_rate = sess.run([t_audio, t_sample_rate],
                                  feed_dict={t_wavpath: wavpath})
    audio = audio[:, 0]

  assert sample_rate == sr, 'sampling rate must be {}Hz, get {}Hz'.format(
      sr, sample_rate)
  return sample_rate, audio


#pylint: disable=invalid-name
def extract_fbank(samples, sr=8000, winlen=0.025, winstep=0.01,
                  feature_size=40):
  ''' extract logfbank with delta and delta-delta
  Return:
      ndarray of shape [nfrmae, feature_size * 3]
  '''
  feat = psf.logfbank(
      samples,
      nfilt=feature_size,
      samplerate=sr,
      winlen=winlen,
      winstep=winstep,
      lowfreq=0,
      highfreq=None,
      preemph=0.97)
  delta = psf.delta(feat, N=2)
  _delta_delta = psf.delta(delta, N=2)
  return np.stack([feat, delta, _delta_delta], axis=-1)


#pylint: disable=invalid-name
def delta_delta(fbank, sr=8000, feature_size=40):
  '''
  params:
    fbank: [nframe, nfbank]
  return : [nframe, nfbank, 3]
  '''
  del sr, feature_size
  assert fbank.ndim == 2
  delta = psf.delta(fbank, N=2)
  _delta_delta = psf.delta(delta, N=2)
  return np.stack([fbank, delta, _delta_delta], axis=-1)


#pylint: disable=too-many-arguments,invalid-name
def fbank_feat(powspec,
               sr=8000,
               feature_size=40,
               nfft=512,
               lowfreq=0,
               highfreq=None):
  ''' return : [nframe, nfbank] '''
  feat = psf.logfbank_from_powspec(
      powspec,
      samplerate=sr,
      nfilt=feature_size,
      nfft=nfft,
      lowfreq=lowfreq,
      highfreq=highfreq,
  )
  return feat


#pylint: disable=too-many-arguments,invalid-name
def powspec_feat(samples,
                 sr=8000,
                 nfft=512,
                 winlen=0.025,
                 winstep=0.01,
                 lowfreq=0,
                 highfreq=None,
                 preemph=0.97):
  ''' return : [nframe, nfft / 2 + 1] '''
  feat = psf.powerspec(
      samples,
      nfft=nfft,
      samplerate=sr,
      winlen=winlen,
      winstep=winstep,
      lowfreq=lowfreq,
      highfreq=highfreq,
      preemph=preemph)
  return feat


#pylint: disable=invalid-name
def freq_resolution(sr, nfft):
  '''
  :param: sr, sample rate
  :param: nfft, fft points
  :return: freq resolution of one point
  '''
  return (sr / 2) / (nfft / 2)


def points(freq, resolution):
  '''
  :params: freq, freq in Hz
  :params: resolution, Hz of one point
  :return: number of points equal to `freq`
  '''
  return freq / resolution


#pylint: disable=too-many-locals
def extract_feat(*args, **kwargs):
  ''' pyfeat, extract feat from utt and dump it '''
  logging.debug("extract_feat : {}".format(kwargs))

  winlen = kwargs.get('winlen')
  winstep = kwargs.get('winstep')
  feature_size = kwargs.get('feature_size')
  sr = kwargs.get('sr')  #pylint: disable=invalid-name
  nfft = kwargs.get('nfft')
  lowfreq = kwargs.get('lowfreq')
  highfreq = kwargs.get('highfreq')
  preemph = kwargs.get('preemph')
  save_feat_path = kwargs.get('save_feat_path')
  dry_run = kwargs.get('dry_run')
  feat_type = kwargs.get('feat_type')

  del lowfreq, preemph

  if save_feat_path and not os.path.exists(save_feat_path):
    os.makedirs(save_feat_path)

  for wavpath in args:
    if save_feat_path:
      filename = os.path.splitext(os.path.split(wavpath)[-1])[0] + '.npy'
      savepath = os.path.join(save_feat_path, filename)
    else:
      savepath = os.path.splitext(wavpath)[0] + '.npy'
    logging.debug('input: {}, output: {}'.format(wavpath, savepath))

    sr_out, samples = load_wav(wavpath, sr=sr)
    del sr_out
    feat = powspec_feat(
        samples, sr=sr, nfft=nfft, winlen=winlen, winstep=winstep)
    logging.debug('apply power spectorgram')

    if feat_type == 'spectrogram':
      # shape: [T, F]
      feat = psf.logpowerspec(feat)
      if highfreq:
        resolution = freq_resolution(sr, nfft)
        ps = int(points(highfreq, resolution))  #pylint: disable=invalid-name
        logging.debug("feat slice: {} {}".format(ps, type(ps)))
        feat = feat[:, :ps]
      logging.debug('apply log power spectorgram')
    elif feat_type == 'logfbank':
      feat = fbank_feat(feat, sr=sr, nfft=nfft, feature_size=feature_size)
      logging.debug('apply fbank spectorgram')
    else:
      raise ValueError("not support feat method")

    feat = feat.astype(np.float32)
    if dry_run:
      logging.info('save feat: path {} shape:{} dtype:{}'.format(
          savepath, feat.shape, feat.dtype))
    else:
      np.save(savepath, feat)
