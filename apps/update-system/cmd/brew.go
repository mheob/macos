package cmd

import (
	"mheob/update-system/utils"

	"github.com/spf13/cobra"
)

var brewCmd = &cobra.Command{
	Use:   "brew",
	Short: "Update brew and its applications",
	Long:  "Update brew, brew casks and all its applications.",
	Run: func(cmd *cobra.Command, args []string) {
		RunUpdateBrew()
	},
}

func init() {
	rootCmd.AddCommand(brewCmd)
}

func RunUpdateBrew() {
	command := "brew"

	utils.PrintCommandStart(command)

	err := utils.CallCmd(command, "update")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd(command, "upgrade")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd(command, "cu", "--all", "--yes", "--cleanup")
	if err != nil {
		panic(err)
	}

	err = utils.CallCmd(command, "update")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd(command)
}
