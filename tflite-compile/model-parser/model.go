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

type TFLiteType byte // enum
const (
	TFLiteType_NO_TYPE TFLiteType = iota
	TFLiteType_FLOAT32
	TFLiteType_INT32
	TFLiteType_UINT8
	TFLiteType_INT64
	TFLiteType_STRING
	TFLiteType_BOOL
	TFLiteType_INT16
	TFLiteType_COMPLEX64
	TFLiteType_INT8
	TFLiteType_FLOAT16
	TFLiteType_FLOAT64
	TFLiteType_COMPLEX128
	TFLiteType_UINT64
	TFLiteType_RESOURCE
	TFLiteType_VARIANT
	TFLiteType_UINT32
	TFLiteType_UINT16
	TFLiteType_INT4
	TFLiteType_BFLOAT16
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
	Custom_opcode   CustomOperator
	Custom_options  []uint8
}

type CustomOperator string // enum
const (
	CustomOperator_SIGNAL_WINDOW                           CustomOperator = "SignalWindow"
	CustomOperator_SIGNAL_FFT_AUTO_SCALE                   CustomOperator = "SignalFftAutoScale"
	CustomOperator_SIGNAL_RFFT                             CustomOperator = "SignalRfft"
	CustomOperator_SIGNAL_ENERGY                           CustomOperator = "SignalEnergy"
	CustomOperator_SIGNAL_FILTER_BANK                      CustomOperator = "SignalFilterBank"
	CustomOperator_SIGNAL_FILTER_BANK_SQUARE_ROOT          CustomOperator = "SignalFilterBankSquareRoot"
	CustomOperator_SIGNAL_FILTER_BANK_SPECTRAL_SUBTRACTION CustomOperator = "SignalFilterBankSpectralSubtraction"
	CustomOperator_SIGNAL_PCAN                             CustomOperator = "SignalPCAN"
	CustomOperator_SIGNAL_FILTER_BANK_LOG                  CustomOperator = "SignalFilterBankLog"
)

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
	BuiltinOperator_STRIDED_SLICE     BuiltinOperator = 45
	BuiltinOperator_RESHAPE           BuiltinOperator = 22
	BuiltinOperator_CUSTOM            BuiltinOperator = 32
)

type BuiltinOptions struct {
	Reshape          ReshapeOptions
	Cast             CastOptions
	Strided_slice    StridedSliceOptions
	Concatenation    ConcatenationOptions
	Mul              MulOptions
	Div              DivOptions
	Minimum          MinimumOptions
	Maximum          MaximumOptions
	Fully_connected  FullyConnectedOptions
	Conv_2d          Conv2DOptions
	Depthwise_conv2d DepthwiseConv2DOptions
	// CUSTOM SIGNAL
	Signal_window                           SignalWindowOptions
	Signal_fft_auto_scale                   SignalFftAutoScaleOptions
	Signal_rfft                             SignalRfftOptions
	Signal_energy                           SignalEnergyOptions
	Signal_filter_bank                      SignalFilterBankOptions
	Signal_filter_bank_square_root          SignalFilterBankSquareRootOptions
	Signal_filter_bank_spectral_subtraction SignalFilterBankSpectralSubtractionOptions
	Signal_pcan                             SignalPcanOptions
	Signal_filter_bank_log                  SignalFilterBankLogOptions
}

type ReshapeOptions struct{}

type CastOptions struct{}

type StridedSliceOptions struct {
	Begin_mask       int16
	End_mask         int16
	Ellipsis_mask    int16
	New_axis_mask    int16
	Shrink_axis_mask int16
	Offset           bool
}

type ConcatenationOptions struct {
	Axis int8
}

type MulOptions struct {
}

type DivOptions struct {
	Input1_zeropoint      int32
	Input2_zeropoint      int32
	Output_zeropoint      int32
	Output_activation_min int32
	Output_activation_max int32

	Output_multiplier int32
	Output_shift      int
}

type MinimumOptions struct {
}

type MaximumOptions struct {
}

type SignalWindowOptions struct {
	Shift int32
}

type SignalFftAutoScaleOptions struct{}

type SignalRfftOptions struct {
	Fft_length  int32
	TFLite_type TFLiteType
}

type SignalEnergyOptions struct {
	End_index   int32
	Start_index int32
}

type SignalFilterBankOptions struct {
	Num_channels int32
}

type SignalFilterBankSquareRootOptions struct{}

type SignalFilterBankSpectralSubtractionOptions struct {
	Alternate_one_minus_smoothing int32
	Alternate_smoothing           int32
	Clamping                      bool
	Min_signal_remaining          int32
	Num_channels                  int32
	One_minus_smoothing           int32
	Smoothing                     int32
	Smoothing_bits                int32
	Spectral_subtraction_bits     int32
}

type SignalPcanOptions struct {
	Snr_shift int32
}

type SignalFilterBankLogOptions struct {
	Input_correction_bits int32
	Output_scale          int32
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
