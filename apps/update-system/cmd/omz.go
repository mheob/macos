package cmd

import (
	"mheob/update-system/utils"

	"github.com/spf13/cobra"
)

var omzCmd = &cobra.Command{
	Use:   "omz",
	Short: "Update Oh My Zsh",
	Long:  "Update Oh My Zsh.",
	Run: func(cmd *cobra.Command, args []string) {
		RunUpdateOmz()
	},
}

func init() {
	rootCmd.AddCommand(omzCmd)
}

func RunUpdateOmz() {
	command := "omz"

	utils.PrintCommandStart(command)

	err := utils.CallCmd("sh", "-c", "~/.oh-my-zsh/tools/upgrade.sh")
	if err != nil {
		panic(err)
	}

	utils.PrintCommandEnd(command)
}
