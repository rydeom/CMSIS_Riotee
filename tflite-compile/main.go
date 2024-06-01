package main

import (
	"fmt"
	"os"
	modelencoder "tflite-compile/model-encoder"
	modelparser "tflite-compile/model-parser"
)

func main() {
	audioPreprocessorModel, err := loadAndParseModel("tflite-files/audio_preprocessor_int8.tflite")
	if err != nil {
		fmt.Println("Error reading and parsing model:", err)
		return
	}
	mircoSpeechModel, err := loadAndParseModel("tflite-files/micro_speech_quantized.tflite")
	if err != nil {
		fmt.Println("Error reading and parsing model:", err)
		return
	}
	storePath := "/Users/janstiefel/code/Riotee_AppTemplate/src/model"

	modelencoder.Endcode(audioPreprocessorModel, storePath, "AUDIO_PREPROCESSOR")
	modelencoder.Endcode(mircoSpeechModel, storePath, "MICRO_SPEECH")
}

func loadAndParseModel(filePath string) (*modelparser.Model, error) {
	buffer, err := os.ReadFile(filePath)
	if err != nil {
		return nil, fmt.Errorf("error reading file: %v", err)
	}

	model := modelparser.Model{}
	err = model.ParseModel(buffer)
	if err != nil {
		return nil, fmt.Errorf("error parsing model: %v", err)
	}

	return &model, nil
}
