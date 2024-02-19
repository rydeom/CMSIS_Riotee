// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type SignOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsSignOptions(buf []byte, offset flatbuffers.UOffsetT) *SignOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &SignOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishSignOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsSignOptions(buf []byte, offset flatbuffers.UOffsetT) *SignOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &SignOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedSignOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *SignOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *SignOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func SignOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func SignOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}