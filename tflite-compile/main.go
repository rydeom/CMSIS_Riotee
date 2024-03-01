package main

import (
	"fmt"
	"os"
	modelencoder "tflite-compile/model-encoder"
	modelparser "tflite-compile/model-parser"
)

func main() {
	filePath := "hello_world_int8.tflite"
	buffer, err := os.ReadFile(filePath)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}
	model := modelparser.Model{}
	err = model.ParseModel(buffer)
	if err != nil {
		fmt.Println("Error parsing model:", err)
		return
	}

	modelencoder.Endcode(&model)

}
