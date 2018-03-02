#!/bin/bash

echo ' ___  ___      _______       ___           ___           ________          '
echo '|\  \|\  \    |\  ___ \     |\  \         |\  \         |\   __  \         '
echo '\ \  \\\  \   \ \   __/|    \ \  \        \ \  \        \ \  \|\  \        '
echo ' \ \   __  \   \ \  \_|/__   \ \  \        \ \  \        \ \  \\\  \       '
echo '  \ \  \ \  \   \ \  \_|\ \   \ \  \____    \ \  \____    \ \  \\\  \      '
echo '   \ \__\ \__\   \ \_______\   \ \_______\   \ \_______\   \ \_______\     '
echo '    \|__|\|__|    \|_______|    \|_______|    \|_______|    \|_______|     '
echo ' ___       __       ________      ________      ___           ________     '
echo '|\  \     |\  \    |\   __  \    |\   __  \    |\  \         |\   ___ \    '
echo '\ \  \    \ \  \   \ \  \|\  \   \ \  \|\  \   \ \  \        \ \  \_|\ \   '
echo ' \ \  \  __\ \  \   \ \  \\\  \   \ \   _  _\   \ \  \        \ \  \ \\ \  '
echo '  \ \  \|\__\_\  \   \ \  \\\  \   \ \  \\  \|   \ \  \____    \ \  \_\\ \ '
echo '   \ \____________\   \ \_______\   \ \__\\ _\    \ \_______\   \ \_______\'
echo '    \|____________|    \|_______|    \|__|\|__|    \|_______|    \|_______|'
echo ''

echo '---------------------'

echo 'clone dotfiles?[Y/n]'
read ANSWER
case $ANSWER in
  "" | "Y" | "y" )
    git clone https://github.com/yuyu1023/dotfiles/;;
  * ) echo "clone dotfiles skip";;
esac

echo '---------------------'

echo 'install homebrew?[Y/n]'
read ANSWER
case $ANSWER in
  "" | "Y" | "y" )
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";;
  * ) echo "install homebrew skip";;
esac

echo '---------------------'

echo 'dotfiles setup?[Y/n]'
read ANSWER
case $ANSWER in
  "" | "Y" | "y" )
	./install;;
  * ) echo "dotfiles setup skip";;
esac

echo '---------------------'

echo 'Brewfile setup?[Y/n]'
read ANSWER
case $ANSWER in
  "" | "Y" | "y" )
  brew bundle;;
  * ) echo "Brewfile setup skip";;
esac

echo '---------------------'

echo 'new Mac setup finished!! Please run chsh /bin/zsh'
