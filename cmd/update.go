package cmd

import (
	"fmt"
	"strings"

	"github.com/spf13/cobra"
	vfs "github.com/twpayne/go-vfs"
)

type updateCmdConfig struct {
	apply bool
}

var updateCmd = &cobra.Command{
	Use:     "update",
	Args:    cobra.NoArgs,
	Short:   "Pull changes from the source VCS and apply any changes",
	Long:    mustGetLongHelp("update"),
	Example: getExample("update"),
	PreRunE: config.ensureNoError,
	RunE:    makeRunE(config.runUpdateCmd),
}

func init() {
	rootCmd.AddCommand(updateCmd)

	persistentFlags := updateCmd.PersistentFlags()
	persistentFlags.BoolVarP(&config.update.apply, "apply", "a", true, "apply after pulling")
}

func (c *Config) runUpdateCmd(fs vfs.FS, args []string) error {
	var pullArgs []string
	if c.SourceVCS.Pull != nil {
		switch v := c.SourceVCS.Pull.(type) {
		case string:
			pullArgs = strings.Split(v, " ")
		case []string:
			pullArgs = v
		default:
			return fmt.Errorf("sourceVCS.pull: cannot parse value")
		}
	} else {
		pullArgs = []string{"pull", "--rebase"}
	}

	if err := c.run(fs, c.SourceDir, c.SourceVCS.Command, pullArgs...); err != nil {
		return err
	}

	if c.update.apply {
		mutator := c.getDefaultMutator(fs)
		persistentState, err := c.getPersistentState(fs, nil)
		if err != nil {
			return err
		}
		defer persistentState.Close()
		if err := c.applyArgs(fs, nil, mutator, persistentState); err != nil {
			return err
		}
	}

	return nil
}
