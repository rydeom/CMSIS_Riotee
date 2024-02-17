// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type CosOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsCosOptions(buf []byte, offset flatbuffers.UOffsetT) *CosOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &CosOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishCosOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsCosOptions(buf []byte, offset flatbuffers.UOffsetT) *CosOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &CosOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedCosOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *CosOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *CosOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func CosOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func CosOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
