package modelencoder

import (
	"fmt"
)

func AddInclude(include string) string {
	return fmt.Sprintf("#include \"%s\"\n", include)
}
