DOT_FILES=(.bashrc .bash_profile .zshrc .emacs.el  â€¦)

for file in ${DOT_FILES[@]}
do
   ln -s $HOME/dotfiles/$file $HOME/$file
done
