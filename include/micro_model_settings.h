/* Copyright 2023 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_MICRO_MODEL_SETTINGS_H_
#define TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_MICRO_MODEL_SETTINGS_H_

#include <stdint.h>
#include "layer_data.h"

// The following values are derived from values used during model training.
// If you change the way you preprocess the input, update all these constants.
#define N_SAMPLES 16000

#define kAudioSampleFrequency 16000
#define kFeatureSize 40
#define kFeatureCount 49
#define kFeatureElementCount 1960 // kFeatureSize * kFeatureCount
#define kFeatureStrideMs 20
#define kFeatureDurationMs 30
#define kAudioSampleDurationCount 480 // kFeatureDurationMs * kAudioSampleFrequency / 1000
#define kAudioSampleStrideCount 320	  // kFeatureStrideMs * kAudioSampleFrequency / 1000

typedef struct ClassificationResult
{
	float probability;
	uint8_t category_idx;
} ClassificationResult;

typedef union MircoSpeechModelData
{
	int16_t samples[N_SAMPLES];
	struct MicroSpeechLayerData
	{
		union MicroSpeechLayer layer_1;
		union MicroSpeechLayer layer_2;
	} layer_data;
} MircoSpeechModelData;
extern union MircoSpeechModelData model_data;

uint8_t Classify(ClassificationResult *result, const int16_t *audio_data, const size_t audio_data_size);

#endif // TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_MICRO_MODEL_SETTINGS_H_
