package run

import (
	"fmt"
	"mheob/update-system/utils"
)

func UpdateNpm() bool {
	fmt.Printf(
		"%sCheck global %s for updates starting ...%s\n",
		utils.Color["purple"],
		"npm",
		utils.Color["default"],
	)

	err := utils.CallCmd("npm", "-g", "outdated")
	if err != nil && err.Error() != "exit status 1" {
		panic(err)
	}

	fmt.Printf(
		"%sCheck global %s for updates finished%s\n\n",
		utils.Color["purple"],
		"npm",
		utils.Color["default"],
	)

	return true
}
