// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type RNNOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsRNNOptions(buf []byte, offset flatbuffers.UOffsetT) *RNNOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &RNNOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishRNNOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsRNNOptions(buf []byte, offset flatbuffers.UOffsetT) *RNNOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &RNNOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedRNNOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *RNNOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *RNNOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *RNNOptions) FusedActivationFunction() ActivationFunctionType {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return ActivationFunctionType(rcv._tab.GetInt8(o + rcv._tab.Pos))
	}
	return 0
}

func (rcv *RNNOptions) MutateFusedActivationFunction(n ActivationFunctionType) bool {
	return rcv._tab.MutateInt8Slot(4, int8(n))
}

func (rcv *RNNOptions) AsymmetricQuantizeInputs() bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return rcv._tab.GetBool(o + rcv._tab.Pos)
	}
	return false
}

func (rcv *RNNOptions) MutateAsymmetricQuantizeInputs(n bool) bool {
	return rcv._tab.MutateBoolSlot(6, n)
}

func RNNOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(2)
}
func RNNOptionsAddFusedActivationFunction(builder *flatbuffers.Builder, fusedActivationFunction ActivationFunctionType) {
	builder.PrependInt8Slot(0, int8(fusedActivationFunction), 0)
}
func RNNOptionsAddAsymmetricQuantizeInputs(builder *flatbuffers.Builder, asymmetricQuantizeInputs bool) {
	builder.PrependBoolSlot(1, asymmetricQuantizeInputs, false)
}
func RNNOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
