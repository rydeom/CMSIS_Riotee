// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type SplitVOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsSplitVOptions(buf []byte, offset flatbuffers.UOffsetT) *SplitVOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &SplitVOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishSplitVOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsSplitVOptions(buf []byte, offset flatbuffers.UOffsetT) *SplitVOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &SplitVOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedSplitVOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *SplitVOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *SplitVOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *SplitVOptions) NumSplits() int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetInt32(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *SplitVOptions) MutateNumSplits(n int32) bool {
	return rcv._tab.MutateInt32Slot(4, n)
}

func SplitVOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func SplitVOptionsAddNumSplits(builder *flatbuffers.Builder, numSplits int32) {
	builder.PrependInt32Slot(0, numSplits, 0)
}
func SplitVOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
