// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type FloorModOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsFloorModOptions(buf []byte, offset flatbuffers.UOffsetT) *FloorModOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &FloorModOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishFloorModOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsFloorModOptions(buf []byte, offset flatbuffers.UOffsetT) *FloorModOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &FloorModOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedFloorModOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *FloorModOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *FloorModOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func FloorModOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func FloorModOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
