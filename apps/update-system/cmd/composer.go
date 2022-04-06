package cmd

import (
	"mheob/update-system/utils"

	"github.com/spf13/cobra"
)

var composerCmd = &cobra.Command{
	Use:   "composer",
	Short: "Update global composer packages",
	Long:  "Update global composer packages.",
	Run: func(cmd *cobra.Command, args []string) {
		RunUpdateComposer()
	},
}

func init() {
	rootCmd.AddCommand(composerCmd)
}

func RunUpdateComposer() {
	command := "composer"

	utils.PrintCommandStart(command)

	err := utils.CallCmd(command, "global", "update")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd(command)
}
