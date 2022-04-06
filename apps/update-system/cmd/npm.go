package cmd

import (
	"fmt"
	"mheob/update-system/utils"

	"github.com/spf13/cobra"
)

var npmCmd = &cobra.Command{
	Use:   "npm",
	Short: "Update global npm packages",
	Long:  "Update global npm packages.",
	Run: func(cmd *cobra.Command, args []string) {
		RunUpdateNpm()
	},
}

func init() {
	rootCmd.AddCommand(npmCmd)
}

func RunUpdateNpm() {
	command := "npm"

	fmt.Printf(
		"%sCheck global %s for updates starting ...%s\n",
		utils.Color["purple"],
		command,
		utils.Color["default"],
	)

	err := utils.CallCmd("npm", "-g", "outdated")
	if err != nil && err.Error() != "exit status 1" {
		panic(err)
	}

	fmt.Printf(
		"%sCheck global %s for updates finished%s\n\n",
		utils.Color["purple"],
		command,
		utils.Color["default"],
	)
}
