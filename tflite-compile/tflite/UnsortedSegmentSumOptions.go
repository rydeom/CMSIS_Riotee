// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type UnsortedSegmentSumOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsUnsortedSegmentSumOptions(buf []byte, offset flatbuffers.UOffsetT) *UnsortedSegmentSumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &UnsortedSegmentSumOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishUnsortedSegmentSumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsUnsortedSegmentSumOptions(buf []byte, offset flatbuffers.UOffsetT) *UnsortedSegmentSumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &UnsortedSegmentSumOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedUnsortedSegmentSumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *UnsortedSegmentSumOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *UnsortedSegmentSumOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func UnsortedSegmentSumOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func UnsortedSegmentSumOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
