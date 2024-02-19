// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import "strconv"

type BuiltinOptions2 byte

const (
	BuiltinOptions2NONE                            BuiltinOptions2 = 0
	BuiltinOptions2StablehloConcatenateOptions     BuiltinOptions2 = 1
	BuiltinOptions2StablehloBroadcastInDimOptions  BuiltinOptions2 = 2
	BuiltinOptions2StablehloSliceOptions           BuiltinOptions2 = 3
	BuiltinOptions2StablehloConvolutionOptions     BuiltinOptions2 = 4
	BuiltinOptions2StablehloCustomCallOptions      BuiltinOptions2 = 5
	BuiltinOptions2StablehloReduceOptions          BuiltinOptions2 = 6
	BuiltinOptions2StablehloScatterOptions         BuiltinOptions2 = 7
	BuiltinOptions2StablehloCompareOptions         BuiltinOptions2 = 8
	BuiltinOptions2StablehloDynamicSliceOptions    BuiltinOptions2 = 9
	BuiltinOptions2StablehloPadOptions             BuiltinOptions2 = 10
	BuiltinOptions2StablehloIotaOptions            BuiltinOptions2 = 11
	BuiltinOptions2StablehloDotGeneralOptions      BuiltinOptions2 = 12
	BuiltinOptions2StablehloReduceWindowOptions    BuiltinOptions2 = 13
	BuiltinOptions2StablehloSortOptions            BuiltinOptions2 = 14
	BuiltinOptions2StablehloWhileOptions           BuiltinOptions2 = 15
	BuiltinOptions2StablehloGatherOptions          BuiltinOptions2 = 16
	BuiltinOptions2StablehloTransposeOptions       BuiltinOptions2 = 17
	BuiltinOptions2DilateOptions                   BuiltinOptions2 = 18
	BuiltinOptions2StablehloRngBitGeneratorOptions BuiltinOptions2 = 19
	BuiltinOptions2ReduceWindowOptions             BuiltinOptions2 = 20
)

var EnumNamesBuiltinOptions2 = map[BuiltinOptions2]string{
	BuiltinOptions2NONE:                            "NONE",
	BuiltinOptions2StablehloConcatenateOptions:     "StablehloConcatenateOptions",
	BuiltinOptions2StablehloBroadcastInDimOptions:  "StablehloBroadcastInDimOptions",
	BuiltinOptions2StablehloSliceOptions:           "StablehloSliceOptions",
	BuiltinOptions2StablehloConvolutionOptions:     "StablehloConvolutionOptions",
	BuiltinOptions2StablehloCustomCallOptions:      "StablehloCustomCallOptions",
	BuiltinOptions2StablehloReduceOptions:          "StablehloReduceOptions",
	BuiltinOptions2StablehloScatterOptions:         "StablehloScatterOptions",
	BuiltinOptions2StablehloCompareOptions:         "StablehloCompareOptions",
	BuiltinOptions2StablehloDynamicSliceOptions:    "StablehloDynamicSliceOptions",
	BuiltinOptions2StablehloPadOptions:             "StablehloPadOptions",
	BuiltinOptions2StablehloIotaOptions:            "StablehloIotaOptions",
	BuiltinOptions2StablehloDotGeneralOptions:      "StablehloDotGeneralOptions",
	BuiltinOptions2StablehloReduceWindowOptions:    "StablehloReduceWindowOptions",
	BuiltinOptions2StablehloSortOptions:            "StablehloSortOptions",
	BuiltinOptions2StablehloWhileOptions:           "StablehloWhileOptions",
	BuiltinOptions2StablehloGatherOptions:          "StablehloGatherOptions",
	BuiltinOptions2StablehloTransposeOptions:       "StablehloTransposeOptions",
	BuiltinOptions2DilateOptions:                   "DilateOptions",
	BuiltinOptions2StablehloRngBitGeneratorOptions: "StablehloRngBitGeneratorOptions",
	BuiltinOptions2ReduceWindowOptions:             "ReduceWindowOptions",
}

var EnumValuesBuiltinOptions2 = map[string]BuiltinOptions2{
	"NONE":                            BuiltinOptions2NONE,
	"StablehloConcatenateOptions":     BuiltinOptions2StablehloConcatenateOptions,
	"StablehloBroadcastInDimOptions":  BuiltinOptions2StablehloBroadcastInDimOptions,
	"StablehloSliceOptions":           BuiltinOptions2StablehloSliceOptions,
	"StablehloConvolutionOptions":     BuiltinOptions2StablehloConvolutionOptions,
	"StablehloCustomCallOptions":      BuiltinOptions2StablehloCustomCallOptions,
	"StablehloReduceOptions":          BuiltinOptions2StablehloReduceOptions,
	"StablehloScatterOptions":         BuiltinOptions2StablehloScatterOptions,
	"StablehloCompareOptions":         BuiltinOptions2StablehloCompareOptions,
	"StablehloDynamicSliceOptions":    BuiltinOptions2StablehloDynamicSliceOptions,
	"StablehloPadOptions":             BuiltinOptions2StablehloPadOptions,
	"StablehloIotaOptions":            BuiltinOptions2StablehloIotaOptions,
	"StablehloDotGeneralOptions":      BuiltinOptions2StablehloDotGeneralOptions,
	"StablehloReduceWindowOptions":    BuiltinOptions2StablehloReduceWindowOptions,
	"StablehloSortOptions":            BuiltinOptions2StablehloSortOptions,
	"StablehloWhileOptions":           BuiltinOptions2StablehloWhileOptions,
	"StablehloGatherOptions":          BuiltinOptions2StablehloGatherOptions,
	"StablehloTransposeOptions":       BuiltinOptions2StablehloTransposeOptions,
	"DilateOptions":                   BuiltinOptions2DilateOptions,
	"StablehloRngBitGeneratorOptions": BuiltinOptions2StablehloRngBitGeneratorOptions,
	"ReduceWindowOptions":             BuiltinOptions2ReduceWindowOptions,
}

func (v BuiltinOptions2) String() string {
	if s, ok := EnumNamesBuiltinOptions2[v]; ok {
		return s
	}
	return "BuiltinOptions2(" + strconv.FormatInt(int64(v), 10) + ")"
}