package cmd

import (
	"os"

	"mheob/update-system/run"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:     "update-system",
	Version: "1.0.0",
	Short:   "Update applications on the macOS system",
	Long: `Update applications on the macOS system via command line tools.
You can use this tool to update applications via brew, composer, npm and so on.`,
	CompletionOptions: cobra.CompletionOptions{DisableDefaultCmd: true},
	Run: func(cmd *cobra.Command, args []string) {
		hasFlag := false
		if cmd.Flags().Lookup("brew").Value.String() == "true" {
			hasFlag = run.UpdateBrew()
		}
		if cmd.Flags().Lookup("composer").Value.String() == "true" {
			hasFlag = run.UpdateComposer()
		}
		if cmd.Flags().Lookup("npm").Value.String() == "true" {
			hasFlag = run.UpdateNpm()
		}
		if cmd.Flags().Lookup("omz").Value.String() == "true" {
			hasFlag = run.UpdateOmz()
		}
		if !hasFlag {
			run.UpdateBrew()
			run.UpdateOmz()
			run.UpdateComposer()
			run.UpdateNpm()
		}
	},
}

func Execute() {
	err := rootCmd.Execute()
	if err != nil {
		os.Exit(1)
	}
}

func init() {
	rootCmd.Flags().BoolP("brew", "b", false, "update brew and its applications")
	rootCmd.Flags().BoolP("composer", "c", false, "update global composer packages")
	rootCmd.Flags().BoolP("npm", "n", false, "check for updates of global npm packages")
	rootCmd.Flags().BoolP("omz", "o", false, "update Oh My Zsh")
}
