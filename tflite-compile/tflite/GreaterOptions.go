// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type GreaterOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsGreaterOptions(buf []byte, offset flatbuffers.UOffsetT) *GreaterOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &GreaterOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishGreaterOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsGreaterOptions(buf []byte, offset flatbuffers.UOffsetT) *GreaterOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &GreaterOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedGreaterOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *GreaterOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *GreaterOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func GreaterOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func GreaterOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
