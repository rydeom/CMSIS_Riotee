// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type RandomOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsRandomOptions(buf []byte, offset flatbuffers.UOffsetT) *RandomOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &RandomOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishRandomOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsRandomOptions(buf []byte, offset flatbuffers.UOffsetT) *RandomOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &RandomOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedRandomOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *RandomOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *RandomOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *RandomOptions) Seed() int64 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetInt64(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *RandomOptions) MutateSeed(n int64) bool {
	return rcv._tab.MutateInt64Slot(4, n)
}

func (rcv *RandomOptions) Seed2() int64 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return rcv._tab.GetInt64(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *RandomOptions) MutateSeed2(n int64) bool {
	return rcv._tab.MutateInt64Slot(6, n)
}

func RandomOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(2)
}
func RandomOptionsAddSeed(builder *flatbuffers.Builder, seed int64) {
	builder.PrependInt64Slot(0, seed, 0)
}
func RandomOptionsAddSeed2(builder *flatbuffers.Builder, seed2 int64) {
	builder.PrependInt64Slot(1, seed2, 0)
}
func RandomOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
