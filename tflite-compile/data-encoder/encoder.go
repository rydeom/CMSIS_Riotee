package dataencoder

import (
	"encoding/binary"
	"fmt"
	modelparser "tflite-compile/model-parser"
)

func EncodeModelIntoBytes(model *modelparser.Model) []byte {
	ret := []byte{}
	versionBytes := make([]byte, 4)
	binary.LittleEndian.PutUint32(versionBytes, model.Version)
	ret = append(ret, versionBytes...)
	tensorBytes := EncodeTensorsIntoBytes(model.Tensors, model.Buffers)
	println("tensorBytes", len(tensorBytes))
	ret = append(ret, tensorBytes...)
	operatorBytes := EncodeOperatorsIntoBytes(model.Operators)
	println("operatorBytes", len(operatorBytes))
	ret = append(ret, operatorBytes...)

	for _, input := range model.Inputs {
		inputBytes := make([]byte, 4)
		binary.LittleEndian.PutUint32(inputBytes, uint32(input))
		ret = append(ret, inputBytes...)
	}

	for _, output := range model.Outputs {
		outputBytes := make([]byte, 4)
		binary.LittleEndian.PutUint32(outputBytes, uint32(output))
		ret = append(ret, outputBytes...)
	}

	if len(ret)%4 != 0 {
		fmt.Println("Warning: buffer size is not a multiple of 4")
	}
	return ret
}
