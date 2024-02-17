// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type RightShiftOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsRightShiftOptions(buf []byte, offset flatbuffers.UOffsetT) *RightShiftOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &RightShiftOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishRightShiftOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsRightShiftOptions(buf []byte, offset flatbuffers.UOffsetT) *RightShiftOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &RightShiftOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedRightShiftOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *RightShiftOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *RightShiftOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func RightShiftOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func RightShiftOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
