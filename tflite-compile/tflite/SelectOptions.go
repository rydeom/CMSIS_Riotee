// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type SelectOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsSelectOptions(buf []byte, offset flatbuffers.UOffsetT) *SelectOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &SelectOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishSelectOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsSelectOptions(buf []byte, offset flatbuffers.UOffsetT) *SelectOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &SelectOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedSelectOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *SelectOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *SelectOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func SelectOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func SelectOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
