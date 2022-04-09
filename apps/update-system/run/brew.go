package run

import "mheob/update-system/utils"

func UpdateBrew() bool {
	utils.PrintCommandStart("brew")

	err := utils.CallCmd("brew", "update")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd("brew", "upgrade")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd("brew", "cu", "--all", "--yes", "--cleanup")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd("brew", "update")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd("brew")

	return true
}
