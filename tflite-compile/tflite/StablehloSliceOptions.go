// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type StablehloSliceOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsStablehloSliceOptions(buf []byte, offset flatbuffers.UOffsetT) *StablehloSliceOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &StablehloSliceOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishStablehloSliceOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsStablehloSliceOptions(buf []byte, offset flatbuffers.UOffsetT) *StablehloSliceOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &StablehloSliceOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedStablehloSliceOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *StablehloSliceOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *StablehloSliceOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *StablehloSliceOptions) StartIndices(j int) int64 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt64(a + flatbuffers.UOffsetT(j*8))
	}
	return 0
}

func (rcv *StablehloSliceOptions) StartIndicesLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *StablehloSliceOptions) MutateStartIndices(j int, n int64) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt64(a+flatbuffers.UOffsetT(j*8), n)
	}
	return false
}

func (rcv *StablehloSliceOptions) LimitIndices(j int) int64 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt64(a + flatbuffers.UOffsetT(j*8))
	}
	return 0
}

func (rcv *StablehloSliceOptions) LimitIndicesLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *StablehloSliceOptions) MutateLimitIndices(j int, n int64) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt64(a+flatbuffers.UOffsetT(j*8), n)
	}
	return false
}

func (rcv *StablehloSliceOptions) Strides(j int) int64 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(8))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt64(a + flatbuffers.UOffsetT(j*8))
	}
	return 0
}

func (rcv *StablehloSliceOptions) StridesLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(8))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *StablehloSliceOptions) MutateStrides(j int, n int64) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(8))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt64(a+flatbuffers.UOffsetT(j*8), n)
	}
	return false
}

func StablehloSliceOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(3)
}
func StablehloSliceOptionsAddStartIndices(builder *flatbuffers.Builder, startIndices flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(0, flatbuffers.UOffsetT(startIndices), 0)
}
func StablehloSliceOptionsStartStartIndicesVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(8, numElems, 8)
}
func StablehloSliceOptionsAddLimitIndices(builder *flatbuffers.Builder, limitIndices flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(1, flatbuffers.UOffsetT(limitIndices), 0)
}
func StablehloSliceOptionsStartLimitIndicesVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(8, numElems, 8)
}
func StablehloSliceOptionsAddStrides(builder *flatbuffers.Builder, strides flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(2, flatbuffers.UOffsetT(strides), 0)
}
func StablehloSliceOptionsStartStridesVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(8, numElems, 8)
}
func StablehloSliceOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
