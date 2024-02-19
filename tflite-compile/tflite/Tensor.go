// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package tflite

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type Tensor struct {
	_tab flatbuffers.Table
}

func GetRootAsTensor(buf []byte, offset flatbuffers.UOffsetT) *Tensor {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &Tensor{}
	x.Init(buf, n+offset)
	return x
}

func FinishTensorBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.Finish(offset)
}

func GetSizePrefixedRootAsTensor(buf []byte, offset flatbuffers.UOffsetT) *Tensor {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &Tensor{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func FinishSizePrefixedTensorBuffer(builder *flatbuffers.Builder, offset flatbuffers.UOffsetT) {
	builder.FinishSizePrefixed(offset)
}

func (rcv *Tensor) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *Tensor) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *Tensor) Shape(j int) int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt32(a + flatbuffers.UOffsetT(j*4))
	}
	return 0
}

func (rcv *Tensor) ShapeLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *Tensor) MutateShape(j int, n int32) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt32(a+flatbuffers.UOffsetT(j*4), n)
	}
	return false
}

func (rcv *Tensor) Type() TensorType {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(6))
	if o != 0 {
		return TensorType(rcv._tab.GetInt8(o + rcv._tab.Pos))
	}
	return 0
}

func (rcv *Tensor) MutateType(n TensorType) bool {
	return rcv._tab.MutateInt8Slot(6, int8(n))
}

func (rcv *Tensor) Buffer() uint32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(8))
	if o != 0 {
		return rcv._tab.GetUint32(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *Tensor) MutateBuffer(n uint32) bool {
	return rcv._tab.MutateUint32Slot(8, n)
}

func (rcv *Tensor) Name() []byte {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(10))
	if o != 0 {
		return rcv._tab.ByteVector(o + rcv._tab.Pos)
	}
	return nil
}

func (rcv *Tensor) Quantization(obj *QuantizationParameters) *QuantizationParameters {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(12))
	if o != 0 {
		x := rcv._tab.Indirect(o + rcv._tab.Pos)
		if obj == nil {
			obj = new(QuantizationParameters)
		}
		obj.Init(rcv._tab.Bytes, x)
		return obj
	}
	return nil
}

func (rcv *Tensor) IsVariable() bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(14))
	if o != 0 {
		return rcv._tab.GetBool(o + rcv._tab.Pos)
	}
	return false
}

func (rcv *Tensor) MutateIsVariable(n bool) bool {
	return rcv._tab.MutateBoolSlot(14, n)
}

func (rcv *Tensor) Sparsity(obj *SparsityParameters) *SparsityParameters {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(16))
	if o != 0 {
		x := rcv._tab.Indirect(o + rcv._tab.Pos)
		if obj == nil {
			obj = new(SparsityParameters)
		}
		obj.Init(rcv._tab.Bytes, x)
		return obj
	}
	return nil
}

func (rcv *Tensor) ShapeSignature(j int) int32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(18))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.GetInt32(a + flatbuffers.UOffsetT(j*4))
	}
	return 0
}

func (rcv *Tensor) ShapeSignatureLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(18))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func (rcv *Tensor) MutateShapeSignature(j int, n int32) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(18))
	if o != 0 {
		a := rcv._tab.Vector(o)
		return rcv._tab.MutateInt32(a+flatbuffers.UOffsetT(j*4), n)
	}
	return false
}

func (rcv *Tensor) HasRank() bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(20))
	if o != 0 {
		return rcv._tab.GetBool(o + rcv._tab.Pos)
	}
	return false
}

func (rcv *Tensor) MutateHasRank(n bool) bool {
	return rcv._tab.MutateBoolSlot(20, n)
}

func (rcv *Tensor) VariantTensors(obj *VariantSubType, j int) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(22))
	if o != 0 {
		x := rcv._tab.Vector(o)
		x += flatbuffers.UOffsetT(j) * 4
		x = rcv._tab.Indirect(x)
		obj.Init(rcv._tab.Bytes, x)
		return true
	}
	return false
}

func (rcv *Tensor) VariantTensorsLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(22))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func TensorStart(builder *flatbuffers.Builder) {
	builder.StartObject(10)
}
func TensorAddShape(builder *flatbuffers.Builder, shape flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(0, flatbuffers.UOffsetT(shape), 0)
}
func TensorStartShapeVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(4, numElems, 4)
}
func TensorAddType(builder *flatbuffers.Builder, type_ TensorType) {
	builder.PrependInt8Slot(1, int8(type_), 0)
}
func TensorAddBuffer(builder *flatbuffers.Builder, buffer uint32) {
	builder.PrependUint32Slot(2, buffer, 0)
}
func TensorAddName(builder *flatbuffers.Builder, name flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(3, flatbuffers.UOffsetT(name), 0)
}
func TensorAddQuantization(builder *flatbuffers.Builder, quantization flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(4, flatbuffers.UOffsetT(quantization), 0)
}
func TensorAddIsVariable(builder *flatbuffers.Builder, isVariable bool) {
	builder.PrependBoolSlot(5, isVariable, false)
}
func TensorAddSparsity(builder *flatbuffers.Builder, sparsity flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(6, flatbuffers.UOffsetT(sparsity), 0)
}
func TensorAddShapeSignature(builder *flatbuffers.Builder, shapeSignature flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(7, flatbuffers.UOffsetT(shapeSignature), 0)
}
func TensorStartShapeSignatureVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(4, numElems, 4)
}
func TensorAddHasRank(builder *flatbuffers.Builder, hasRank bool) {
	builder.PrependBoolSlot(8, hasRank, false)
}
func TensorAddVariantTensors(builder *flatbuffers.Builder, variantTensors flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(9, flatbuffers.UOffsetT(variantTensors), 0)
}
func TensorStartVariantTensorsVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(4, numElems, 4)
}
func TensorEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}