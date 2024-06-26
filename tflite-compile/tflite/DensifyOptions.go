// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type DensifyOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsDensifyOptions(buf []byte, offset flatbuffers.UOffsetT) *DensifyOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &DensifyOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishDensifyOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsDensifyOptions(buf []byte, offset flatbuffers.UOffsetT) *DensifyOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &DensifyOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedDensifyOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *DensifyOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *DensifyOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func DensifyOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func DensifyOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
