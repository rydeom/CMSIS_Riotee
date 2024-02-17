package dataencoder

import (
	"fmt"
	modelparser "tflite-compile/model-parser"
)

func EncodeBuffersIntoBytes(buffers []modelparser.Buffer) []byte {
	ret := []byte{}
	for _, buffer := range buffers {
		ret = append(ret, buffer.Data...)
		if len(buffer.Data)%4 != 0 {
			fmt.Println("Warning: buffer size is not a multiple of 4")
		}
	}

	return ret
}
