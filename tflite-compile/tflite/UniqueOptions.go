// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type UniqueOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsUniqueOptions(buf []byte, offset flatbuffers.UOffsetT) *UniqueOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &UniqueOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishUniqueOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsUniqueOptions(buf []byte, offset flatbuffers.UOffsetT) *UniqueOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &UniqueOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedUniqueOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *UniqueOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *UniqueOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *UniqueOptions) IdxOutType() TensorType {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return TensorType(rcv._tab.GetInt8(o + rcv._tab.Pos))
	}
	return 2
}

func (rcv *UniqueOptions) MutateIdxOutType(n TensorType) bool {
	return rcv._tab.MutateInt8Slot(4, int8(n))
}

func UniqueOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func UniqueOptionsAddIdxOutType(builder *flatbuffers.Builder, idxOutType TensorType) {
	builder.PrependInt8Slot(0, int8(idxOutType), 2)
}
func UniqueOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
