// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type ExpandDimsOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsExpandDimsOptions(buf []byte, offset flatbuffers.UOffsetT) *ExpandDimsOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &ExpandDimsOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishExpandDimsOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsExpandDimsOptions(buf []byte, offset flatbuffers.UOffsetT) *ExpandDimsOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &ExpandDimsOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedExpandDimsOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *ExpandDimsOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *ExpandDimsOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func ExpandDimsOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func ExpandDimsOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
