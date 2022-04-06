package utils

import (
	"os"
	"os/exec"
)

// `CallCmd` calls the command with the given name and arguments
func CallCmd(name string, arg ...string) (err error) {
	cmd := exec.Command(name, arg...)
	cmd.Stdout = os.Stdout
	err = cmd.Run()
	return
}
