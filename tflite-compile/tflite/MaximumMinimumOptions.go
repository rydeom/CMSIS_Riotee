// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type MaximumMinimumOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsMaximumMinimumOptions(buf []byte, offset flatbuffers.UOffsetT) *MaximumMinimumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &MaximumMinimumOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishMaximumMinimumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsMaximumMinimumOptions(buf []byte, offset flatbuffers.UOffsetT) *MaximumMinimumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &MaximumMinimumOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedMaximumMinimumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *MaximumMinimumOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *MaximumMinimumOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func MaximumMinimumOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func MaximumMinimumOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
