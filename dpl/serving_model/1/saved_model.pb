��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%��8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
E
Relu6
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
9
Softmax
logits"T
softmax"T"
Ttype:
2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.12.02
b'unknown'Ȩ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
{
inputsPlaceholder*
dtype0*0
_output_shapes
:����������(*%
shape:����������(
h
textsPlaceholder*
dtype0*'
_output_shapes
:���������d*
shape:���������d
i
emo_crnn_raw_model_1/featsIdentityinputs*
T0*0
_output_shapes
:����������(
�
,emo_crnn_raw_model_1/model/feature/cmvn_meanConst*�
value�B�("���h�!fB8\Yܶ��BwM8&���)ھy�I8^�����J#:8;�϶����*8羶.� �S�84K��� ��.8=͔��;'�8ׄ�AvA�?��7
E�� )?��7<��=U�͊�7Ȗ��a^���7ׇ���i�W��7�U��{�s��5�7d�|��}�K��7ag��9�����7Z����w��7۞~��f�����7�����2����7��r�5|����7
R]�f{��os�7��H��ʐ��T�7��q��l��<b�7B<��5��!��7&�Q�=!���~�7�m�g���8�7(��;��-�7�z3�/����ߢ7xb�'��^�7��.�_.�����7�C�
V�����7�Z;�XҢ����7M�����LYo7�� ����D�W7d�?� ��� @7ZP� {��� E79'�p��C7�#	���ȿ �,7�<��,d޿P�7����D�N7#G�*
dtype0*&
_output_shapes
:(
�
0emo_crnn_raw_model_1/model/feature/cmvn_varianceConst*�
value�B�("�<:?��><]�;>D3?�E"<H��:5))?g�<���:A\?a<��:�?ln<���:��?��<���:C�?��<�]�:�x?ا<!X�:L�?q�<��:��?�-%<���:��?C�0<�T;ݼ?ѭ-<�/�:pU ?��.<��:�/!?�.<o��:�G?��)<�o�:��?uI$<�M�:��?#<+��:��?�?%<E�:"?m�'<J��:�� ?yh%<��:�� ?o'<��:EQ ?e�&<���:��?Q'<(�:�� ?�)<���:)� ?�(<��:�?Ӗ(<.�:n�?�&<�K�:�'?�9%<��:��?p�"<e�:��?Q<�y�:�4?�;<��:�?��<OI�:��?�"<�S�:X?^�"<��:��?��<���:�c?:C<4K�:��?ď<��:��?m-<�:�:o`�>�l�;.��:���>���;c��:*
dtype0*&
_output_shapes
:(
�
&emo_crnn_raw_model_1/model/feature/subSubemo_crnn_raw_model_1/feats,emo_crnn_raw_model_1/model/feature/cmvn_mean*
T0*0
_output_shapes
:����������(
m
(emo_crnn_raw_model_1/model/feature/add/yConst*
valueB
 *_p�0*
dtype0*
_output_shapes
: 
�
&emo_crnn_raw_model_1/model/feature/addAdd0emo_crnn_raw_model_1/model/feature/cmvn_variance(emo_crnn_raw_model_1/model/feature/add/y*
T0*&
_output_shapes
:(
�
(emo_crnn_raw_model_1/model/feature/RsqrtRsqrt&emo_crnn_raw_model_1/model/feature/add*
T0*&
_output_shapes
:(
�
&emo_crnn_raw_model_1/model/feature/mulMul&emo_crnn_raw_model_1/model/feature/sub(emo_crnn_raw_model_1/model/feature/Rsqrt*
T0*0
_output_shapes
:����������(
�
'emo_crnn_raw_model_1/model/cnn/IdentityIdentity&emo_crnn_raw_model_1/model/feature/mul*
T0*0
_output_shapes
:����������(
�
Oemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/shapeConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*%
valueB"         �   *
dtype0*
_output_shapes
:
�
Memo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/minConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
valueB
 *Vb�*
dtype0*
_output_shapes
: 
�
Memo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/maxConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
valueB
 *Vb=*
dtype0*
_output_shapes
: 
�
Wemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/RandomUniformRandomUniformOemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:�*

seed *
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
seed2 
�
Memo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/subSubMemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/maxMemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/min*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
_output_shapes
: 
�
Memo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/mulMulWemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/RandomUniformMemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/sub*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*'
_output_shapes
:�
�
Iemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniformAddMemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/mulMemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform/min*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*'
_output_shapes
:�
�
.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW
VariableV2*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
	container *
shape:�*
dtype0*'
_output_shapes
:�*
shared_name 
�
5emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/AssignAssign.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DWIemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
validate_shape(*'
_output_shapes
:�*
use_locking(
�
3emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/readIdentity.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*'
_output_shapes
:�
�
Bemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Initializer/ConstConst*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
valueB�*    *
dtype0*
_output_shapes	
:�
�
0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
	container 
�
7emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/AssignAssign0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/baisBemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Initializer/Const*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
5emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/readIdentity0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
_output_shapes	
:�
�
2emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/Conv2DConv2D'emo_crnn_raw_model_1/model/cnn/Identity3emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/read*
paddingSAME*1
_output_shapes
:����������(�*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
3emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/BiasAddBiasAdd2emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/Conv2D5emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/read*
T0*
data_formatNHWC*1
_output_shapes
:����������(�
�
@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Initializer/onesConst*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
valueB�*  �?*
dtype0*
_output_shapes	
:�
�
/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma
VariableV2*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
6emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/AssignAssign/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
validate_shape(*
_output_shapes	
:�
�
4emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/readIdentity/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
_output_shapes	
:�
�
@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Initializer/zerosConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
valueB�*    *
dtype0*
_output_shapes	
:�
�
.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta
VariableV2*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/AssignAssign.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
validate_shape(*
_output_shapes	
:�
�
3emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/readIdentity.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
_output_shapes	
:�
�
Gemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/Initializer/zerosConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
valueB�*    *
dtype0*
_output_shapes	
:�
�
5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean
VariableV2*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
<emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/AssignAssign5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_meanGemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/Initializer/zeros*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
:emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/readIdentity5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
_output_shapes	
:�
�
Jemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/Initializer/onesConst*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
valueB�*  �?*
dtype0*
_output_shapes	
:�
�
9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
	container *
shape:�
�
@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/AssignAssign9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_varianceJemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/Initializer/ones*
use_locking(*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
validate_shape(*
_output_shapes	
:�
�
>emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/readIdentity9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
_output_shapes	
:�
�
8emo_crnn_raw_model_1/model/cnn/unit-1/bn1/FusedBatchNormFusedBatchNorm3emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/BiasAdd4emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/read3emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/read:emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/read>emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/read*
T0*
data_formatNHWC*M
_output_shapes;
9:����������(�:�:�:�:�*
is_training( *
epsilon%o�:
t
/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
+emo_crnn_raw_model_1/model/cnn/unit-1/Relu6Relu68emo_crnn_raw_model_1/model/cnn/unit-1/bn1/FusedBatchNorm*
T0*1
_output_shapes
:����������(�
�
6emo_crnn_raw_model_1/model/cnn/unit-1/dropout/IdentityIdentity+emo_crnn_raw_model_1/model/cnn/unit-1/Relu6*
T0*1
_output_shapes
:����������(�
�
.emo_crnn_raw_model_1/model/cnn/unit-1/max_poolMaxPool6emo_crnn_raw_model_1/model/cnn/unit-1/dropout/Identity*
ksize
*
paddingVALID*1
_output_shapes
:�����������*
T0*
data_formatNHWC*
strides

�
Oemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/shapeConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*%
valueB"      �      *
dtype0*
_output_shapes
:
�
Memo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/minConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
valueB
 *�2�*
dtype0*
_output_shapes
: 
�
Memo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/maxConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
valueB
 *�2=*
dtype0*
_output_shapes
: 
�
Wemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/RandomUniformRandomUniformOemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/shape*

seed *
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
seed2 *
dtype0*(
_output_shapes
:��
�
Memo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/subSubMemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/maxMemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/min*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
_output_shapes
: 
�
Memo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/mulMulWemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/RandomUniformMemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/sub*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*(
_output_shapes
:��
�
Iemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniformAddMemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/mulMemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform/min*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*(
_output_shapes
:��
�
.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW
VariableV2*
shared_name *A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
	container *
shape:��*
dtype0*(
_output_shapes
:��
�
5emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/AssignAssign.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DWIemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
3emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/readIdentity.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*(
_output_shapes
:��
�
Bemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Initializer/ConstConst*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
valueB�*    *
dtype0*
_output_shapes	
:�
�
0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
	container *
shape:�
�
7emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/AssignAssign0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/baisBemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Initializer/Const*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
5emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/readIdentity0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
_output_shapes	
:�
�
2emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/Conv2DConv2D.emo_crnn_raw_model_1/model/cnn/unit-1/max_pool3emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/read*
paddingSAME*1
_output_shapes
:�����������*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
3emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/BiasAddBiasAdd2emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/Conv2D5emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/read*
T0*
data_formatNHWC*1
_output_shapes
:�����������
�
@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Initializer/onesConst*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
valueB�*  �?*
dtype0*
_output_shapes	
:�
�
/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
	container 
�
6emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/AssignAssign/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
validate_shape(*
_output_shapes	
:�
�
4emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/readIdentity/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
_output_shapes	
:�
�
@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Initializer/zerosConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
valueB�*    *
dtype0*
_output_shapes	
:�
�
.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
	container 
�
5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/AssignAssign.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Initializer/zeros*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
3emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/readIdentity.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
_output_shapes	
:�
�
Gemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/Initializer/zerosConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
valueB�*    *
dtype0*
_output_shapes	
:�
�
5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean
VariableV2*
shared_name *H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
<emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/AssignAssign5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_meanGemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/Initializer/zeros*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
:emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/readIdentity5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
_output_shapes	
:�
�
Jemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/Initializer/onesConst*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
valueB�*  �?*
dtype0*
_output_shapes	
:�
�
9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance
VariableV2*
shared_name *L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/AssignAssign9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_varianceJemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/Initializer/ones*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
>emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/readIdentity9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
_output_shapes	
:�
�
8emo_crnn_raw_model_1/model/cnn/unit-2/bn2/FusedBatchNormFusedBatchNorm3emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/BiasAdd4emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/read3emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/read:emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/read>emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/read*
T0*
data_formatNHWC*M
_output_shapes;
9:�����������:�:�:�:�*
is_training( *
epsilon%o�:
t
/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
+emo_crnn_raw_model_1/model/cnn/unit-2/Relu6Relu68emo_crnn_raw_model_1/model/cnn/unit-2/bn2/FusedBatchNorm*
T0*1
_output_shapes
:�����������
�
6emo_crnn_raw_model_1/model/cnn/unit-2/dropout/IdentityIdentity+emo_crnn_raw_model_1/model/cnn/unit-2/Relu6*
T0*1
_output_shapes
:�����������
�
.emo_crnn_raw_model_1/model/cnn/unit-2/max_poolMaxPool6emo_crnn_raw_model_1/model/cnn/unit-2/dropout/Identity*1
_output_shapes
:����������
�*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
/emo_crnn_raw_model_1/model/linear/Reshape/shapeConst*
valueB"���� 
  *
dtype0*
_output_shapes
:
�
)emo_crnn_raw_model_1/model/linear/ReshapeReshape.emo_crnn_raw_model_1/model/cnn/unit-2/max_pool/emo_crnn_raw_model_1/model/linear/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
2emo_crnn_raw_model_1/model/linear/dropout/IdentityIdentity)emo_crnn_raw_model_1/model/linear/Reshape*
T0*(
_output_shapes
:����������
�
Temo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/shapeConst*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
valueB" 
    *
dtype0*
_output_shapes
:
�
Semo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/meanConst*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Uemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/stddevConst*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
^emo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
seed2 
�
Remo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/mulMul^emo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/TruncatedNormalUemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights* 
_output_shapes
:
��
�
Nemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normalAddRemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/mulSemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights* 
_output_shapes
:
��
�
1emo_crnn_raw_model_1/model/linear/linear1/weights
VariableV2*
shared_name *D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
8emo_crnn_raw_model_1/model/linear/linear1/weights/AssignAssign1emo_crnn_raw_model_1/model/linear/linear1/weightsNemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal*
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
6emo_crnn_raw_model_1/model/linear/linear1/weights/readIdentity1emo_crnn_raw_model_1/model/linear/linear1/weights*
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights* 
_output_shapes
:
��
�
@emo_crnn_raw_model_1/model/linear/linear1/bias/Initializer/ConstConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/linear/linear1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
.emo_crnn_raw_model_1/model/linear/linear1/bias
VariableV2*
shared_name *A
_class7
53loc:@emo_crnn_raw_model_1/model/linear/linear1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
5emo_crnn_raw_model_1/model/linear/linear1/bias/AssignAssign.emo_crnn_raw_model_1/model/linear/linear1/bias@emo_crnn_raw_model_1/model/linear/linear1/bias/Initializer/Const*
use_locking(*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/linear/linear1/bias*
validate_shape(*
_output_shapes	
:�
�
3emo_crnn_raw_model_1/model/linear/linear1/bias/readIdentity.emo_crnn_raw_model_1/model/linear/linear1/bias*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/linear/linear1/bias*
_output_shapes	
:�
�
0emo_crnn_raw_model_1/model/linear/linear1/MatMulMatMul2emo_crnn_raw_model_1/model/linear/dropout/Identity6emo_crnn_raw_model_1/model/linear/linear1/weights/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
-emo_crnn_raw_model_1/model/linear/linear1/addAdd0emo_crnn_raw_model_1/model/linear/linear1/MatMul3emo_crnn_raw_model_1/model/linear/linear1/bias/read*
T0*(
_output_shapes
:����������
�
1emo_crnn_raw_model_1/model/linear/Reshape_1/shapeConst*!
valueB"�����    *
dtype0*
_output_shapes
:
�
+emo_crnn_raw_model_1/model/linear/Reshape_1Reshape-emo_crnn_raw_model_1/model/linear/linear1/add1emo_crnn_raw_model_1/model/linear/Reshape_1/shape*
T0*
Tshape0*-
_output_shapes
:�����������
�
6emo_crnn_raw_model_1/model/time_pooling/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
2emo_crnn_raw_model_1/model/time_pooling/ExpandDims
ExpandDims+emo_crnn_raw_model_1/model/linear/Reshape_16emo_crnn_raw_model_1/model/time_pooling/ExpandDims/dim*
T0*1
_output_shapes
:�����������*

Tdim0
�
0emo_crnn_raw_model_1/model/time_pooling/max_poolMaxPool2emo_crnn_raw_model_1/model/time_pooling/ExpandDims*
T0*
data_formatNHWC*
strides	
�*
ksize	
�*
paddingVALID*0
_output_shapes
:����������
�
5emo_crnn_raw_model_1/model/time_pooling/Reshape/shapeConst*
valueB"����  *
dtype0*
_output_shapes
:
�
/emo_crnn_raw_model_1/model/time_pooling/ReshapeReshape0emo_crnn_raw_model_1/model/time_pooling/max_pool5emo_crnn_raw_model_1/model/time_pooling/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
Xemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/shapeConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
valueB"  @   *
dtype0*
_output_shapes
:
�
Wemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/meanConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Yemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/stddevConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
bemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/shape*

seed *
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
seed2 *
dtype0*
_output_shapes
:	�@
�
Vemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/mulMulbemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/TruncatedNormalYemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
_output_shapes
:	�@
�
Remo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normalAddVemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/mulWemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
_output_shapes
:	�@
�
5emo_crnn_raw_model_1/model/dense/dense-matmul/weights
VariableV2*
dtype0*
_output_shapes
:	�@*
shared_name *H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
	container *
shape:	�@
�
<emo_crnn_raw_model_1/model/dense/dense-matmul/weights/AssignAssign5emo_crnn_raw_model_1/model/dense/dense-matmul/weightsRemo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
validate_shape(*
_output_shapes
:	�@*
use_locking(
�
:emo_crnn_raw_model_1/model/dense/dense-matmul/weights/readIdentity5emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
_output_shapes
:	�@
�
Demo_crnn_raw_model_1/model/dense/dense-matmul/bias/Initializer/ConstConst*E
_class;
97loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
2emo_crnn_raw_model_1/model/dense/dense-matmul/bias
VariableV2*E
_class;
97loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
9emo_crnn_raw_model_1/model/dense/dense-matmul/bias/AssignAssign2emo_crnn_raw_model_1/model/dense/dense-matmul/biasDemo_crnn_raw_model_1/model/dense/dense-matmul/bias/Initializer/Const*
T0*E
_class;
97loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
�
7emo_crnn_raw_model_1/model/dense/dense-matmul/bias/readIdentity2emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
T0*E
_class;
97loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
_output_shapes
:@
�
4emo_crnn_raw_model_1/model/dense/dense-matmul/MatMulMatMul/emo_crnn_raw_model_1/model/time_pooling/Reshape:emo_crnn_raw_model_1/model/dense/dense-matmul/weights/read*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
�
1emo_crnn_raw_model_1/model/dense/dense-matmul/addAdd4emo_crnn_raw_model_1/model/dense/dense-matmul/MatMul7emo_crnn_raw_model_1/model/dense/dense-matmul/bias/read*
T0*'
_output_shapes
:���������@
�
@emo_crnn_raw_model_1/model/dense/dense-bn/gamma/Initializer/onesConst*B
_class8
64loc:@emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
/emo_crnn_raw_model_1/model/dense/dense-bn/gamma
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *B
_class8
64loc:@emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
	container 
�
6emo_crnn_raw_model_1/model/dense/dense-bn/gamma/AssignAssign/emo_crnn_raw_model_1/model/dense/dense-bn/gamma@emo_crnn_raw_model_1/model/dense/dense-bn/gamma/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
validate_shape(*
_output_shapes
:@
�
4emo_crnn_raw_model_1/model/dense/dense-bn/gamma/readIdentity/emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
_output_shapes
:@
�
@emo_crnn_raw_model_1/model/dense/dense-bn/beta/Initializer/zerosConst*A
_class7
53loc:@emo_crnn_raw_model_1/model/dense/dense-bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
.emo_crnn_raw_model_1/model/dense/dense-bn/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *A
_class7
53loc:@emo_crnn_raw_model_1/model/dense/dense-bn/beta*
	container 
�
5emo_crnn_raw_model_1/model/dense/dense-bn/beta/AssignAssign.emo_crnn_raw_model_1/model/dense/dense-bn/beta@emo_crnn_raw_model_1/model/dense/dense-bn/beta/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/dense/dense-bn/beta*
validate_shape(*
_output_shapes
:@
�
3emo_crnn_raw_model_1/model/dense/dense-bn/beta/readIdentity.emo_crnn_raw_model_1/model/dense/dense-bn/beta*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/dense/dense-bn/beta*
_output_shapes
:@
�
Gemo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/Initializer/zerosConst*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
5emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean
VariableV2*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
<emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/AssignAssign5emo_crnn_raw_model_1/model/dense/dense-bn/moving_meanGemo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
validate_shape(*
_output_shapes
:@
�
:emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/readIdentity5emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
_output_shapes
:@
�
Jemo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/Initializer/onesConst*L
_classB
@>loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
9emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance
VariableV2*
shared_name *L
_classB
@>loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/AssignAssign9emo_crnn_raw_model_1/model/dense/dense-bn/moving_varianceJemo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/Initializer/ones*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
>emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/readIdentity9emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
_output_shapes
:@
~
9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/addAdd>emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/read9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/add/y*
T0*
_output_shapes
:@
�
9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/RsqrtRsqrt7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/add*
T0*
_output_shapes
:@
�
7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mulMul9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/Rsqrt4emo_crnn_raw_model_1/model/dense/dense-bn/gamma/read*
T0*
_output_shapes
:@
�
9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul_1Mul1emo_crnn_raw_model_1/model/dense/dense-matmul/add7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul*
T0*'
_output_shapes
:���������@
�
9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul_2Mul:emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/read7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul*
T0*
_output_shapes
:@
�
7emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/subSub3emo_crnn_raw_model_1/model/dense/dense-bn/beta/read9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul_2*
T0*
_output_shapes
:@
�
9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/add_1Add9emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/mul_17emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/sub*
T0*'
_output_shapes
:���������@
�
&emo_crnn_raw_model_1/model/dense/Relu6Relu69emo_crnn_raw_model_1/model/dense/dense-bn/batchnorm/add_1*
T0*'
_output_shapes
:���������@
�
1emo_crnn_raw_model_1/model/dense/dropout/IdentityIdentity&emo_crnn_raw_model_1/model/dense/Relu6*
T0*'
_output_shapes
:���������@
�
Zemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/shapeConst*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
valueB"@      *
dtype0*
_output_shapes
:
�
Yemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/meanConst*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
�
[emo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/stddevConst*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
demo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalZemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/shape*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
seed2 *
dtype0*
_output_shapes

:@*

seed 
�
Xemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/mulMuldemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/TruncatedNormal[emo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/stddev*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
_output_shapes

:@
�
Temo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normalAddXemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/mulYemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal/mean*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
_output_shapes

:@
�
7emo_crnn_raw_model_1/model/logits/logits-matmul/weights
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
	container *
shape
:@
�
>emo_crnn_raw_model_1/model/logits/logits-matmul/weights/AssignAssign7emo_crnn_raw_model_1/model/logits/logits-matmul/weightsTemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal*
use_locking(*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
validate_shape(*
_output_shapes

:@
�
<emo_crnn_raw_model_1/model/logits/logits-matmul/weights/readIdentity7emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
_output_shapes

:@
�
Femo_crnn_raw_model_1/model/logits/logits-matmul/bias/Initializer/ConstConst*G
_class=
;9loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
valueB*    *
dtype0*
_output_shapes
:
�
4emo_crnn_raw_model_1/model/logits/logits-matmul/bias
VariableV2*G
_class=
;9loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
;emo_crnn_raw_model_1/model/logits/logits-matmul/bias/AssignAssign4emo_crnn_raw_model_1/model/logits/logits-matmul/biasFemo_crnn_raw_model_1/model/logits/logits-matmul/bias/Initializer/Const*
use_locking(*
T0*G
_class=
;9loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
validate_shape(*
_output_shapes
:
�
9emo_crnn_raw_model_1/model/logits/logits-matmul/bias/readIdentity4emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
T0*G
_class=
;9loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
_output_shapes
:
�
6emo_crnn_raw_model_1/model/logits/logits-matmul/MatMulMatMul1emo_crnn_raw_model_1/model/dense/dropout/Identity<emo_crnn_raw_model_1/model/logits/logits-matmul/weights/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
3emo_crnn_raw_model_1/model/logits/logits-matmul/addAdd6emo_crnn_raw_model_1/model/logits/logits-matmul/MatMul9emo_crnn_raw_model_1/model/logits/logits-matmul/bias/read*
T0*'
_output_shapes
:���������
�
softmax_outputSoftmax3emo_crnn_raw_model_1/model/logits/logits-matmul/add*
T0*'
_output_shapes
:���������
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�	
save/SaveV2/tensor_namesConst*�	
value�	B�	B.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/betaB/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gammaB5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_meanB9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_varianceB.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DWB0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/baisB.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/betaB/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gammaB5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_meanB9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_varianceB.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DWB0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/baisB.emo_crnn_raw_model_1/model/dense/dense-bn/betaB/emo_crnn_raw_model_1/model/dense/dense-bn/gammaB5emo_crnn_raw_model_1/model/dense/dense-bn/moving_meanB9emo_crnn_raw_model_1/model/dense/dense-bn/moving_varianceB2emo_crnn_raw_model_1/model/dense/dense-matmul/biasB5emo_crnn_raw_model_1/model/dense/dense-matmul/weightsB.emo_crnn_raw_model_1/model/linear/linear1/biasB1emo_crnn_raw_model_1/model/linear/linear1/weightsB4emo_crnn_raw_model_1/model/logits/logits-matmul/biasB7emo_crnn_raw_model_1/model/logits/logits-matmul/weightsBglobal_step*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais.emo_crnn_raw_model_1/model/dense/dense-bn/beta/emo_crnn_raw_model_1/model/dense/dense-bn/gamma5emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean9emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance2emo_crnn_raw_model_1/model/dense/dense-matmul/bias5emo_crnn_raw_model_1/model/dense/dense-matmul/weights.emo_crnn_raw_model_1/model/linear/linear1/bias1emo_crnn_raw_model_1/model/linear/linear1/weights4emo_crnn_raw_model_1/model/logits/logits-matmul/bias7emo_crnn_raw_model_1/model/logits/logits-matmul/weightsglobal_step*%
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�	
save/RestoreV2/tensor_namesConst"/device:CPU:0*�	
value�	B�	B.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/betaB/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gammaB5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_meanB9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_varianceB.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DWB0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/baisB.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/betaB/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gammaB5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_meanB9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_varianceB.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DWB0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/baisB.emo_crnn_raw_model_1/model/dense/dense-bn/betaB/emo_crnn_raw_model_1/model/dense/dense-bn/gammaB5emo_crnn_raw_model_1/model/dense/dense-bn/moving_meanB9emo_crnn_raw_model_1/model/dense/dense-bn/moving_varianceB2emo_crnn_raw_model_1/model/dense/dense-matmul/biasB5emo_crnn_raw_model_1/model/dense/dense-matmul/weightsB.emo_crnn_raw_model_1/model/linear/linear1/biasB1emo_crnn_raw_model_1/model/linear/linear1/weightsB4emo_crnn_raw_model_1/model/logits/logits-matmul/biasB7emo_crnn_raw_model_1/model/logits/logits-matmul/weightsBglobal_step*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2	*p
_output_shapes^
\:::::::::::::::::::::::
�
save/AssignAssign.emo_crnn_raw_model_1/model/cnn/unit-1/bn1/betasave/RestoreV2*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_1Assign/emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gammasave/RestoreV2:1*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_2Assign5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_meansave/RestoreV2:2*
use_locking(*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean*
validate_shape(*
_output_shapes	
:�
�
save/Assign_3Assign9emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variancesave/RestoreV2:3*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_4Assign.emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DWsave/RestoreV2:4*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW*
validate_shape(*'
_output_shapes
:�*
use_locking(
�
save/Assign_5Assign0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/baissave/RestoreV2:5*
use_locking(*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais*
validate_shape(*
_output_shapes	
:�
�
save/Assign_6Assign.emo_crnn_raw_model_1/model/cnn/unit-2/bn2/betasave/RestoreV2:6*
use_locking(*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta*
validate_shape(*
_output_shapes	
:�
�
save/Assign_7Assign/emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gammasave/RestoreV2:7*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_8Assign5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_meansave/RestoreV2:8*
use_locking(*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean*
validate_shape(*
_output_shapes	
:�
�
save/Assign_9Assign9emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variancesave/RestoreV2:9*
use_locking(*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance*
validate_shape(*
_output_shapes	
:�
�
save/Assign_10Assign.emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DWsave/RestoreV2:10*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW*
validate_shape(*(
_output_shapes
:��*
use_locking(
�
save/Assign_11Assign0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/baissave/RestoreV2:11*
T0*C
_class9
75loc:@emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_12Assign.emo_crnn_raw_model_1/model/dense/dense-bn/betasave/RestoreV2:12*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/dense/dense-bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_13Assign/emo_crnn_raw_model_1/model/dense/dense-bn/gammasave/RestoreV2:13*
use_locking(*
T0*B
_class8
64loc:@emo_crnn_raw_model_1/model/dense/dense-bn/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_14Assign5emo_crnn_raw_model_1/model/dense/dense-bn/moving_meansave/RestoreV2:14*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_15Assign9emo_crnn_raw_model_1/model/dense/dense-bn/moving_variancesave/RestoreV2:15*
T0*L
_classB
@>loc:@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
save/Assign_16Assign2emo_crnn_raw_model_1/model/dense/dense-matmul/biassave/RestoreV2:16*
use_locking(*
T0*E
_class;
97loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/bias*
validate_shape(*
_output_shapes
:@
�
save/Assign_17Assign5emo_crnn_raw_model_1/model/dense/dense-matmul/weightssave/RestoreV2:17*
use_locking(*
T0*H
_class>
<:loc:@emo_crnn_raw_model_1/model/dense/dense-matmul/weights*
validate_shape(*
_output_shapes
:	�@
�
save/Assign_18Assign.emo_crnn_raw_model_1/model/linear/linear1/biassave/RestoreV2:18*
T0*A
_class7
53loc:@emo_crnn_raw_model_1/model/linear/linear1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_19Assign1emo_crnn_raw_model_1/model/linear/linear1/weightssave/RestoreV2:19*
use_locking(*
T0*D
_class:
86loc:@emo_crnn_raw_model_1/model/linear/linear1/weights*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_20Assign4emo_crnn_raw_model_1/model/logits/logits-matmul/biassave/RestoreV2:20*
use_locking(*
T0*G
_class=
;9loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_21Assign7emo_crnn_raw_model_1/model/logits/logits-matmul/weightssave/RestoreV2:21*
T0*J
_class@
><loc:@emo_crnn_raw_model_1/model/logits/logits-matmul/weights*
validate_shape(*
_output_shapes

:@*
use_locking(
�
save/Assign_22Assignglobal_stepsave/RestoreV2:22*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables"D
save/Const:0save/control_dependency:0save/restore_all 
5 @F8"�
trainable_variables��
�
0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW:05emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Assign5emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/read:02Kemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform:08
�
2emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais:07emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Assign7emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/read:02Demo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma:06emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Assign6emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/read:02Bemo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta:05emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Assign5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/read:02Bemo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Initializer/zeros:08
�
0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW:05emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Assign5emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/read:02Kemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform:08
�
2emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais:07emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Assign7emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/read:02Demo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma:06emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Assign6emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/read:02Bemo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta:05emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Assign5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/read:02Bemo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Initializer/zeros:08
�
3emo_crnn_raw_model_1/model/linear/linear1/weights:08emo_crnn_raw_model_1/model/linear/linear1/weights/Assign8emo_crnn_raw_model_1/model/linear/linear1/weights/read:02Pemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal:08
�
0emo_crnn_raw_model_1/model/linear/linear1/bias:05emo_crnn_raw_model_1/model/linear/linear1/bias/Assign5emo_crnn_raw_model_1/model/linear/linear1/bias/read:02Bemo_crnn_raw_model_1/model/linear/linear1/bias/Initializer/Const:08
�
7emo_crnn_raw_model_1/model/dense/dense-matmul/weights:0<emo_crnn_raw_model_1/model/dense/dense-matmul/weights/Assign<emo_crnn_raw_model_1/model/dense/dense-matmul/weights/read:02Temo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal:08
�
4emo_crnn_raw_model_1/model/dense/dense-matmul/bias:09emo_crnn_raw_model_1/model/dense/dense-matmul/bias/Assign9emo_crnn_raw_model_1/model/dense/dense-matmul/bias/read:02Femo_crnn_raw_model_1/model/dense/dense-matmul/bias/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/dense/dense-bn/gamma:06emo_crnn_raw_model_1/model/dense/dense-bn/gamma/Assign6emo_crnn_raw_model_1/model/dense/dense-bn/gamma/read:02Bemo_crnn_raw_model_1/model/dense/dense-bn/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/dense/dense-bn/beta:05emo_crnn_raw_model_1/model/dense/dense-bn/beta/Assign5emo_crnn_raw_model_1/model/dense/dense-bn/beta/read:02Bemo_crnn_raw_model_1/model/dense/dense-bn/beta/Initializer/zeros:08
�
9emo_crnn_raw_model_1/model/logits/logits-matmul/weights:0>emo_crnn_raw_model_1/model/logits/logits-matmul/weights/Assign>emo_crnn_raw_model_1/model/logits/logits-matmul/weights/read:02Vemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal:08
�
6emo_crnn_raw_model_1/model/logits/logits-matmul/bias:0;emo_crnn_raw_model_1/model/logits/logits-matmul/bias/Assign;emo_crnn_raw_model_1/model/logits/logits-matmul/bias/read:02Hemo_crnn_raw_model_1/model/logits/logits-matmul/bias/Initializer/Const:08"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"�+
	variables�+�+
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
0emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW:05emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Assign5emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/read:02Kemo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/DW/Initializer/random_uniform:08
�
2emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais:07emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Assign7emo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/read:02Demo_crnn_raw_model_1/model/cnn/unit-1/cnn-1/bais/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma:06emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Assign6emo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/read:02Bemo_crnn_raw_model_1/model/cnn/unit-1/bn1/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta:05emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Assign5emo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/read:02Bemo_crnn_raw_model_1/model/cnn/unit-1/bn1/beta/Initializer/zeros:08
�
7emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean:0<emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/Assign<emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/read:02Iemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_mean/Initializer/zeros:0
�
;emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance:0@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/Assign@emo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/read:02Lemo_crnn_raw_model_1/model/cnn/unit-1/bn1/moving_variance/Initializer/ones:0
�
0emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW:05emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Assign5emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/read:02Kemo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/DW/Initializer/random_uniform:08
�
2emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais:07emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Assign7emo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/read:02Demo_crnn_raw_model_1/model/cnn/unit-2/cnn-2/bais/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma:06emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Assign6emo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/read:02Bemo_crnn_raw_model_1/model/cnn/unit-2/bn2/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta:05emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Assign5emo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/read:02Bemo_crnn_raw_model_1/model/cnn/unit-2/bn2/beta/Initializer/zeros:08
�
7emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean:0<emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/Assign<emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/read:02Iemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_mean/Initializer/zeros:0
�
;emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance:0@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/Assign@emo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/read:02Lemo_crnn_raw_model_1/model/cnn/unit-2/bn2/moving_variance/Initializer/ones:0
�
3emo_crnn_raw_model_1/model/linear/linear1/weights:08emo_crnn_raw_model_1/model/linear/linear1/weights/Assign8emo_crnn_raw_model_1/model/linear/linear1/weights/read:02Pemo_crnn_raw_model_1/model/linear/linear1/weights/Initializer/truncated_normal:08
�
0emo_crnn_raw_model_1/model/linear/linear1/bias:05emo_crnn_raw_model_1/model/linear/linear1/bias/Assign5emo_crnn_raw_model_1/model/linear/linear1/bias/read:02Bemo_crnn_raw_model_1/model/linear/linear1/bias/Initializer/Const:08
�
7emo_crnn_raw_model_1/model/dense/dense-matmul/weights:0<emo_crnn_raw_model_1/model/dense/dense-matmul/weights/Assign<emo_crnn_raw_model_1/model/dense/dense-matmul/weights/read:02Temo_crnn_raw_model_1/model/dense/dense-matmul/weights/Initializer/truncated_normal:08
�
4emo_crnn_raw_model_1/model/dense/dense-matmul/bias:09emo_crnn_raw_model_1/model/dense/dense-matmul/bias/Assign9emo_crnn_raw_model_1/model/dense/dense-matmul/bias/read:02Femo_crnn_raw_model_1/model/dense/dense-matmul/bias/Initializer/Const:08
�
1emo_crnn_raw_model_1/model/dense/dense-bn/gamma:06emo_crnn_raw_model_1/model/dense/dense-bn/gamma/Assign6emo_crnn_raw_model_1/model/dense/dense-bn/gamma/read:02Bemo_crnn_raw_model_1/model/dense/dense-bn/gamma/Initializer/ones:08
�
0emo_crnn_raw_model_1/model/dense/dense-bn/beta:05emo_crnn_raw_model_1/model/dense/dense-bn/beta/Assign5emo_crnn_raw_model_1/model/dense/dense-bn/beta/read:02Bemo_crnn_raw_model_1/model/dense/dense-bn/beta/Initializer/zeros:08
�
7emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean:0<emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/Assign<emo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/read:02Iemo_crnn_raw_model_1/model/dense/dense-bn/moving_mean/Initializer/zeros:0
�
;emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance:0@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/Assign@emo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/read:02Lemo_crnn_raw_model_1/model/dense/dense-bn/moving_variance/Initializer/ones:0
�
9emo_crnn_raw_model_1/model/logits/logits-matmul/weights:0>emo_crnn_raw_model_1/model/logits/logits-matmul/weights/Assign>emo_crnn_raw_model_1/model/logits/logits-matmul/weights/read:02Vemo_crnn_raw_model_1/model/logits/logits-matmul/weights/Initializer/truncated_normal:08
�
6emo_crnn_raw_model_1/model/logits/logits-matmul/bias:0;emo_crnn_raw_model_1/model/logits/logits-matmul/bias/Assign;emo_crnn_raw_model_1/model/logits/logits-matmul/bias/read:02Hemo_crnn_raw_model_1/model/logits/logits-matmul/bias/Initializer/Const:08*�
serving_default�
'
texts
texts:0���������d
2
inputs(
inputs:0����������(1
output'
softmax_output:0���������tensorflow/serving/predict*�
predictions�
'
texts
texts:0���������d
2
inputs(
inputs:0����������(1
output'
softmax_output:0���������tensorflow/serving/predict