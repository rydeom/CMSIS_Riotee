// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type AssignVariableOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsAssignVariableOptions(buf []byte, offset flatbuffers.UOffsetT) *AssignVariableOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &AssignVariableOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishAssignVariableOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsAssignVariableOptions(buf []byte, offset flatbuffers.UOffsetT) *AssignVariableOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &AssignVariableOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedAssignVariableOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *AssignVariableOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *AssignVariableOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func AssignVariableOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(0)
}
func AssignVariableOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
