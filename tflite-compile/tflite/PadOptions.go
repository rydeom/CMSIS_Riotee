// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type PadOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsPadOptions(buf []byte, offset flatbuffers.UOffsetT) *PadOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &PadOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishPadOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsPadOptions(buf []byte, offset flatbuffers.UOffsetT) *PadOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &PadOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedPadOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *PadOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *PadOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func PadOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func PadOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
