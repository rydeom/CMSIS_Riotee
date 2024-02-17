// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type BroadcastToOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsBroadcastToOptions(buf []byte, offset flatbuffers.UOffsetT) *BroadcastToOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &BroadcastToOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishBroadcastToOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsBroadcastToOptions(buf []byte, offset flatbuffers.UOffsetT) *BroadcastToOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &BroadcastToOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedBroadcastToOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *BroadcastToOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *BroadcastToOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func BroadcastToOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func BroadcastToOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
