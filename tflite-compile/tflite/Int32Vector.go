// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type Int32Vector struct {
	_tab flatbuffers.Table
}

func GetRootAsInt32Vector(buf []byte, offset flatbuffers.UOffsetT) *Int32Vector {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &Int32Vector{}
	x.Init(buf, n+offset)
	return x
}

func FinishInt32VectorBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsInt32Vector(buf []byte, offset flatbuffers.UOffsetT) *Int32Vector {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &Int32Vector{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedInt32VectorBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *Int32Vector) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *Int32Vector) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *Int32Vector) Values(j int) int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt32(a + flatbuffers.UOffsetT(j*4))
	}
	return 0
}

func (rcv *Int32Vector) ValuesLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *Int32Vector) MutateValues(j int, n int32) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt32(a+flatbuffers.UOffsetT(j*4), n)
	}
	return false
}

func Int32VectorStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func Int32VectorAddValues(builder *flatbuffers.Builder, values flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(0, flatbuffers.UOffsetT(values), 0)
}
func Int32VectorStartValuesVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(4, numElems, 4)
}
func Int32VectorEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
