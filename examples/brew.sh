#!/usr/bin/env bash

# Brew installation restore
# Generated at Tue Sep 25 22:59:37 CEST 2018
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
for b in adr_tools awscli bat coreutils delve dep direnv elixir entr exercism exiv2 ext4fuse fd fish fortune fzf giflib git-lfs heroku idris irssi jsonlint kompose kubectx lua@5.1 mesalib-glw mkcert mosh mysql ncdu netcat nss openssl@1.1 p7zip pandoc peco phantomjs php@7.1 plantuml ponysay postgresql prettyping pwgen radare2 sdl sshfs swig thefuck tldr toxiproxy unar vault vegeta watchman webp; do
    brew install ${b}
done

#
# Installing casks
echo "Installing casks"
for c in adapter apache-directory-studio arduino blender caffeine cakebrew freecad hex-fiend insomnia iterm2 java launchrocket librecad ngrok openscad osxfuse pibakery quicksilver rstudio vlc; do
    brew cask install ${c}
done

echo "Done"
