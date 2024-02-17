package dataencoder

import (
	"encoding/binary"
	"fmt"
	"math"
	modelparser "tflite-compile/model-parser"
)

func EncodeTensorsIntoBytes(tensors []modelparser.Tensor) []byte {
	ret := []byte{}
	for _, tensor := range tensors {
		ret = append(ret, encodeTensorIntoBytes(&tensor)...)
	}

	return ret
}

func encodeTensorIntoBytes(tensor *modelparser.Tensor) []byte {
	ret := []byte{}
	ret = append(ret, byte(tensor.Type))
	ret = append(ret, byte(0), byte(0), byte(0)) // Padding

	for _, shape := range tensor.Shape {
		bufferShape := make([]byte, 4)
		binary.LittleEndian.PutUint32(bufferShape, uint32(shape))
		ret = append(ret, bufferShape...)
	}

	bufferBuffer := make([]byte, 4)
	binary.LittleEndian.PutUint32(bufferBuffer, tensor.Buffer)
	ret = append(ret, bufferBuffer...)

	ret = append(ret, encodeQuantizationParamsIntoBytes(tensor.Quantization)...)
	if len(ret)%4 != 0 {
		fmt.Println("Warning: buffer size is not a multiple of 4")
	}

	return ret
}

func encodeQuantizationParamsIntoBytes(quantizationParams modelparser.QuantizationParameters) []byte {
	ret := []byte{}

	for _, scale := range quantizationParams.Scale {
		bufferScale := make([]byte, 4)
		binary.LittleEndian.PutUint32(bufferScale, math.Float32bits(scale))
		ret = append(ret, bufferScale...)
	}

	for _, zeroPoint := range quantizationParams.Zero_point {
		bufferZeroPoint := make([]byte, 8)
		binary.LittleEndian.PutUint64(bufferZeroPoint, uint64(zeroPoint))
		ret = append(ret, bufferZeroPoint...)
	}

	if quantizationParams.Quantized_dimension != 0 {
		bufferQuantizedDimension := make([]byte, 4)
		binary.LittleEndian.PutUint32(bufferQuantizedDimension, uint32(quantizationParams.Quantized_dimension))
		ret = append(ret, bufferQuantizedDimension...)
	}

	if len(ret)%4 != 0 {
		fmt.Println("Warning: buffer size is not a multiple of 4")
	}

	return ret
}
