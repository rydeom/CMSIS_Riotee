// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type QuantizeOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsQuantizeOptions(buf []byte, offset flatbuffers.UOffsetT) *QuantizeOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &QuantizeOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishQuantizeOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsQuantizeOptions(buf []byte, offset flatbuffers.UOffsetT) *QuantizeOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &QuantizeOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedQuantizeOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *QuantizeOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *QuantizeOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func QuantizeOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func QuantizeOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
