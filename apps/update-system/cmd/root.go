package cmd

import (
	"os"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:     "update-system",
	Version: "0.0.1",
	Short:   "Update applications on the macOS system",
	Long: `Update applications on the macOS system via command line tools.
You can use this tool to update applications via brew, composer, npm and so on.`,
	CompletionOptions: cobra.CompletionOptions{DisableDefaultCmd: true},
	// Run: func(cmd *cobra.Command, args []string) { },
}

func Execute() {
	err := rootCmd.Execute()
	if err != nil {
		os.Exit(1)
	}
}

func init() {
	// rootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.update-system.yaml)")
	// rootCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")
}
