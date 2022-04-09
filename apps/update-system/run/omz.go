package run

import "mheob/update-system/utils"

func UpdateOmz() bool {
	utils.PrintCommandStart("omz")

	err := utils.CallCmd("sh", "-c", "~/.oh-my-zsh/tools/upgrade.sh")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd("omz")

	return true
}
