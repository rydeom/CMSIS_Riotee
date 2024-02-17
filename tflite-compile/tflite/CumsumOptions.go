// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type CumsumOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsCumsumOptions(buf []byte, offset flatbuffers.UOffsetT) *CumsumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &CumsumOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishCumsumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsCumsumOptions(buf []byte, offset flatbuffers.UOffsetT) *CumsumOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &CumsumOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedCumsumOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *CumsumOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *CumsumOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *CumsumOptions) Exclusive() bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetBool(o + rcv._tab.Pos)
	}
	return false
}

func (rcv *CumsumOptions) MutateExclusive(n bool) bool {
	return rcv._tab.MutateBoolSlot(4, n)
}

func (rcv *CumsumOptions) Reverse() bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return rcv._tab.GetBool(o + rcv._tab.Pos)
	}
	return false
}

func (rcv *CumsumOptions) MutateReverse(n bool) bool {
	return rcv._tab.MutateBoolSlot(6, n)
}

func CumsumOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(2)
}
func CumsumOptionsAddExclusive(builder *flatbuffers.Builder, exclusive bool) {
	builder.PrependBoolSlot(0, exclusive, false)
}
func CumsumOptionsAddReverse(builder *flatbuffers.Builder, reverse bool) {
	builder.PrependBoolSlot(1, reverse, false)
}
func CumsumOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
