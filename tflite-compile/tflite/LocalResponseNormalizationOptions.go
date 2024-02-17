// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type LocalResponseNormalizationOptions struct {
	_tab flatbuffers.Table
}

func GetRootAsLocalResponseNormalizationOptions(buf []byte, offset flatbuffers.UOffsetT) *LocalResponseNormalizationOptions {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &LocalResponseNormalizationOptions{}
	x.Init(buf, n+offset)
	return x
}

func FinishLocalResponseNormalizationOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsLocalResponseNormalizationOptions(buf []byte, offset flatbuffers.UOffsetT) *LocalResponseNormalizationOptions {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &LocalResponseNormalizationOptions{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedLocalResponseNormalizationOptionsBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *LocalResponseNormalizationOptions) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *LocalResponseNormalizationOptions) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *LocalResponseNormalizationOptions) Radius() int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetInt32(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *LocalResponseNormalizationOptions) MutateRadius(n int32) bool {
	return rcv._tab.MutateInt32Slot(4, n)
}

func (rcv *LocalResponseNormalizationOptions) Bias() float32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return rcv._tab.GetFloat32(o + rcv._tab.Pos)
	}
	return 0.0
}

func (rcv *LocalResponseNormalizationOptions) MutateBias(n float32) bool {
	return rcv._tab.MutateFloat32Slot(6, n)
}

func (rcv *LocalResponseNormalizationOptions) Alpha() float32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(8))
	if o != 0 {
		return rcv._tab.GetFloat32(o + rcv._tab.Pos)
	}
	return 0.0
}

func (rcv *LocalResponseNormalizationOptions) MutateAlpha(n float32) bool {
	return rcv._tab.MutateFloat32Slot(8, n)
}

func (rcv *LocalResponseNormalizationOptions) Beta() float32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(10))
	if o != 0 {
		return rcv._tab.GetFloat32(o + rcv._tab.Pos)
	}
	return 0.0
}

func (rcv *LocalResponseNormalizationOptions) MutateBeta(n float32) bool {
	return rcv._tab.MutateFloat32Slot(10, n)
}

func LocalResponseNormalizationOptionsStart(builder *flatbuffers.Builder) {
	builder.StartObject(4)
}
func LocalResponseNormalizationOptionsAddRadius(builder *flatbuffers.Builder, radius int32) {
	builder.PrependInt32Slot(0, radius, 0)
}
func LocalResponseNormalizationOptionsAddBias(builder *flatbuffers.Builder, bias float32) {
	builder.PrependFloat32Slot(1, bias, 0.0)
}
func LocalResponseNormalizationOptionsAddAlpha(builder *flatbuffers.Builder, alpha float32) {
	builder.PrependFloat32Slot(2, alpha, 0.0)
}
func LocalResponseNormalizationOptionsAddBeta(builder *flatbuffers.Builder, beta float32) {
	builder.PrependFloat32Slot(3, beta, 0.0)
}
func LocalResponseNormalizationOptionsEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
