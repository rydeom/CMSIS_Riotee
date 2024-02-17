// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type ReadVariableOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsReadVariableOptions(buf []byte, offset flatbuffers.UOffsetT) *ReadVariableOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &ReadVariableOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishReadVariableOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsReadVariableOptions(buf []byte, offset flatbuffers.UOffsetT) *ReadVariableOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &ReadVariableOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedReadVariableOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *ReadVariableOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *ReadVariableOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func ReadVariableOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func ReadVariableOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
