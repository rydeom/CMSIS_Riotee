package modelparser

type FlexBuffer struct {
	buffer []byte
	offset int
}

func GetRootAsModel(buffer []byte, offset int) *FlexBuffer {
	return &FlexBuffer{
		buffer: buffer,
		offset: offset,
	}
}
