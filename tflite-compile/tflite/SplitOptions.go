// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type SplitOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsSplitOptions(buf []byte, offset flatbuffers.UOffsetT) *SplitOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &SplitOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishSplitOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsSplitOptions(buf []byte, offset flatbuffers.UOffsetT) *SplitOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &SplitOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedSplitOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *SplitOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *SplitOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *SplitOptions) NumSplits() int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetInt32(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *SplitOptions) MutateNumSplits(n int32) bool {
	return rcv._tab.MutateInt32Slot(4, n)
}

func SplitOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func SplitOptionsAddNumSplits(builder *flatbuffers.Builder, numSplits int32) {
	builder.PrependInt32Slot(0, numSplits, 0)
}
func SplitOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
