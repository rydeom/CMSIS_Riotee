// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type UnsortedSegmentMaxOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsUnsortedSegmentMaxOptions(buf []byte, offset flatbuffers.UOffsetT) *UnsortedSegmentMaxOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &UnsortedSegmentMaxOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishUnsortedSegmentMaxOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsUnsortedSegmentMaxOptions(buf []byte, offset flatbuffers.UOffsetT) *UnsortedSegmentMaxOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &UnsortedSegmentMaxOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedUnsortedSegmentMaxOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *UnsortedSegmentMaxOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *UnsortedSegmentMaxOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func UnsortedSegmentMaxOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func UnsortedSegmentMaxOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
