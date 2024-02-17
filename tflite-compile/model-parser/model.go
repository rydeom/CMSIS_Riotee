package modelparser

import "fmt"

func (m *Model) Print() {
	fmt.Println("Model version:", m.Version)
	fmt.Println("Inputs:", m.Inputs)
	fmt.Println("Outputs:", m.Outputs)
	fmt.Println("Buffers:", m.Buffers)
	fmt.Println("Tensors:", m.Tensors)
	for i, op := range m.Operators {
		fmt.Println("Operator", i, "inputs:", op.Inputs)
		fmt.Println("Operator", i, "outputs:", op.Outputs)
		fmt.Println("Operator", i, "opcode:", op.Opcode)
		fmt.Println("Operator", i, "builtin_options:", op.Builtin_options)
	}
	fmt.Println("--------------------------------")
}

type Model struct {
	Version   uint32
	Inputs    []int32
	Outputs   []int32
	Buffers   []Buffer
	Tensors   []Tensor
	Operators []Operator
}

type Buffer struct {
	Data []byte
}

type Tensor struct {
	Type         TensorType
	Shape        []int
	Buffer       uint32
	Quantization QuantizationParameters
}

type TensorType byte // enum
const (
	TensorType_FLOAT32 TensorType = iota
	TensorType_FLOAT16
	TensorType_INT32
	TensorType_UINT8
	TensorType_INT64
	TensorType_STRING
	TensorType_BOOL
	TensorType_INT16
	TensorType_COMPLEX64
	TensorType_INT8
	TensorType_FLOAT64
	TensorType_COMPLEX128
	TensorType_UINT64
	TensorType_RESOURCE
	TensorType_VARIANT
	TensorType_UINT32
	TensorType_UINT16
	TensorType_INT4
)

type QuantizationParameters struct {
	Scale               []float32
	Zero_point          []int64
	Quantized_dimension int32
}

type Operator struct {
	Inputs          []int
	Outputs         []int
	Opcode          BuiltinOperator
	Builtin_options BuiltinOptions
}

type BuiltinOperator uint32 // enum
const (
	BuiltinOperator_ADD               BuiltinOperator = 0
	BuiltinOperator_AVERAGE_POOL_2D   BuiltinOperator = 1
	BuiltinOperator_CONCATENATION     BuiltinOperator = 2
	BuiltinOperator_CONV_2D           BuiltinOperator = 3
	BuiltinOperator_DEPTHWISE_CONV_2D BuiltinOperator = 4
	BuiltinOperator_DEPTH_TO_SPACE    BuiltinOperator = 5
	BuiltinOperator_DEQUANTIZE        BuiltinOperator = 6
	BuiltinOperator_EMBEDDING_LOOKUP  BuiltinOperator = 7
	BuiltinOperator_FLOOR             BuiltinOperator = 8
	BuiltinOperator_FULLY_CONNECTED   BuiltinOperator = 9
)

type BuiltinOptions struct {
	Fully_connected  FullyConnectedOptions
	Conv_2d          Conv2DOptions
	Depthwise_conv2d DepthwiseConv2DOptions
}

type FullyConnectedOptions struct {
	Fused_activation_function ActivationFunctionType
	Quantized_bias_type       TensorType
	Weights_format            FullyConnectedOptionsWeightsFormat
}

type Conv2DOptions struct {
	Padding                   Padding
	Stride_w                  int32
	Stride_h                  int32
	Fused_activation_function ActivationFunctionType
	Dilation_w_factor         int32
	Dilation_h_factor         int32
	Quantized_bias_type       TensorType
}

type DepthwiseConv2DOptions struct {
	Padding                   Padding
	Stride_w                  int32
	Stride_h                  int32
	Depth_multiplier          int32
	Fused_activation_function ActivationFunctionType
	Dilation_w_factor         int32
	Dilation_h_factor         int32
}

type ActivationFunctionType byte // enum
const (
	ActivationFunctionType_NONE ActivationFunctionType = iota
	ActivationFunctionType_RELU
	ActivationFunctionType_RELU_N1_TO_1
	ActivationFunctionType_RELU6
	ActivationFunctionType_TANH
	ActivationFunctionType_SIGN_BIT
)

type Padding byte // enum
const (
	Padding_SAME Padding = iota
	Padding_VALID
)

type FullyConnectedOptionsWeightsFormat byte // enum
const (
	FullyConnectedOptionsWeightsFormat_DEFAULT FullyConnectedOptionsWeightsFormat = iota
	FullyConnectedOptionsWeightsFormat_SHUFFLED4x16INT8
)
