// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type ArgMaxOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsArgMaxOptions(buf []byte, offset flatbuffers.UOffsetT) *ArgMaxOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &ArgMaxOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishArgMaxOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsArgMaxOptions(buf []byte, offset flatbuffers.UOffsetT) *ArgMaxOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &ArgMaxOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedArgMaxOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *ArgMaxOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *ArgMaxOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *ArgMaxOptions) OutputType() TensorType {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return TensorType(rcv._tab.GetInt8(o + rcv._tab.Pos))
	}
	return 0
}

func (rcv *ArgMaxOptions) MutateOutputType(n TensorType) bool {
	return rcv._tab.MutateInt8Slot(4, int8(n))
}

func ArgMaxOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func ArgMaxOptionsAddOutputType(builder *flatbuffers.Builder, outputType TensorType) {
	builder.PrependInt8Slot(0, int8(outputType), 0)
}
func ArgMaxOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
