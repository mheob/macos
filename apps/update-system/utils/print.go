package utils

import "fmt"

var Color = map[string]string{
	"default": "\033[0m",
	"purple":  "\033[35m",
}

// `PrintCommandStart` prints the start of the command
func PrintCommandStart(command string) {
	fmt.Printf("%sUpdate %s starting ...%s\n", Color["purple"], command, Color["default"])
}

// `PrintCommandEnd` prints the end of the command
func PrintCommandEnd(command string) {
	fmt.Printf("%sUpdate %s finished%s\n\n", Color["purple"], command, Color["default"])
}
