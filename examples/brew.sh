#!/usr/bin/env bash

# Brew installation restore
# Generated at Tue Sep 25 22:39:44 CEST 2018
#

which -s brew
if [ $? -ne 0 ]; then
    echo "Installing brew..."
    (/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
fi

# Retapping taps
#
echo "Tapping taps"
for t in browsh-org/browsh cavaliercoder/dmidecode facebook/fb go-delve/delve goreleaser/tap homebrew/cask homebrew/cask-drivers homebrew/cask-versions homebrew/core homebrew/services neovim/neovim olleolleolle/adr-tools shopify/shopify; do
    brew tap ${t}
done

# Installing brews
#
echo "Installing brews"
brew install adr_tools antlr awscli bat browsh buck composer coreutils delve dep direnv elixir entr exercism exiv2 ext4fuse fd fish fortune fzf giflib git-lfs heroku idris irssi jsonlint kompose kubectx lua@5.1 mesalib-glw mkcert mosh mysql ncdu netcat nss openssl@1.1 p7zip pandoc peco phantomjs php@7.1 plantuml ponysay postgresql prettyping pwgen radare2 sdl sshfs swig thefuck tldr toxiproxy unar vault vegeta watchman webp

#
# Installing casks
echo "Installing casks"
brew cask install adapter android-platform-tools anki apache-directory-studio arduino bitbar blender caffeine cakebrew calibre chicken elm-platform freecad github-desktop gitkraken hex-fiend insomnia iterm2-beta keycast keycastr launchrocket librecad ngrok openscad osxfuse pgadmin4 pibakery quicksilver rdm rstudio slic3r solvespace sourcetree vlc xquartz yubikey-neo-manager yubikey-personalization-gui

echo "Done"

EOF 
