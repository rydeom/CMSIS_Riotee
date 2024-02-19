// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type NonMaxSuppressionV4Options struct {
	_tab flatbuffers.Table
}

func GetRootAsNonMaxSuppressionV4Options(buf []byte, offset flatbuffers.UOffsetT) *NonMaxSuppressionV4Options {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &NonMaxSuppressionV4Options{}
	x.Init(buf, n+offset)
	return x
}

func FinishNonMaxSuppressionV4OptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsNonMaxSuppressionV4Options(buf []byte, offset flatbuffers.UOffsetT) *NonMaxSuppressionV4Options {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &NonMaxSuppressionV4Options{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedNonMaxSuppressionV4OptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *NonMaxSuppressionV4Options) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *NonMaxSuppressionV4Options) Table() flatbuffers.Table {
	return rcv._tab
}

func NonMaxSuppressionV4OptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func NonMaxSuppressionV4OptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}