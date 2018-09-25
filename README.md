# brew-migrate

A few shell scripts to recreate a brew installation onto a new machine.

## Motivation

Every now and then I need to move my brew setup to a new machine.
This moment is a good opportunity to review the tools I have installed 
and maybe get rid of those that I do not use anymore.

`brew list` returns all installed packages, but it lists only package
names and it contains brews both installed directly as well as those
that have been installed as dependencies.

So weeding out the things I do not use anymore quickly turns into a yak
shaving task.

No more.

## Usage

`brew_inventory` creates a nicely formatted Markdown file listing the
main brews installed (i.e. filters out those not installed
as dependencies), installed casks and tapped taps.

Any taps marked as deprecated by brew will be omitted in the tap list.

See example/brew_inventory.md for an example.

    brew_inventory [output file name]

If no file name is specified it will create a file named
`brew_inventory.md` in the current directory.

The generated file uses checked github-style checkboxes for all brews,
casks and taps currently installed.

If you want to get rid of some parts before transferring you can either 
delete the line from the Markdown file or clear the checkbox (`- [x]` -> `- [ ]`)

The second tool in the setup is `brew_migrate`.

    brew_migrate > bash.sh

It takes the filename of the Markdown inventory and outputs a
shell script to stdout that can be executed to recreate your brew installation.

It will only include the __checked__ items in the inventory file, so
any entry where you removed the check mark will not be installed.

You can then copy the created script to the new machine and execute
it - if brew is not installed yet, it will do so.

See example/brew.sh for a sample generated script.

## Prerequisites

- a brew installation to migrate
- an installation of [jq](https://stedolan.github.io/jq/) (Will be installed if not found)