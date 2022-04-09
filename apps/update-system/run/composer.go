package run

import "mheob/update-system/utils"

func UpdateComposer() bool {
	utils.PrintCommandStart("composer")

	err := utils.CallCmd("composer", "global", "update")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd("composer")

	return true
}
