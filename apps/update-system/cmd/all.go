package cmd

import "github.com/spf13/cobra"

var allCmd = &cobra.Command{
	Use:   "all",
	Short: "Update all available tools",
	Long:  "Update all available tools via brew, oh-my-zsh, composer and npm.",
	Run: func(cmd *cobra.Command, args []string) {
		RunUpdateBrew()
		RunUpdateOmz()
		RunUpdateComposer()
		RunUpdateNpm()
	},
}

func init() {
	rootCmd.AddCommand(allCmd)
}
