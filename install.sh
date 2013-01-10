#!/bin/bash

dot_files=(
  ".ackrc"
  ".bash_profile"
  ".git-completion.bash"
  ".git-prompt.sh"
  ".gitconfig"
  ".gitignore"
  ".vim"
  ".vimrc"
)

echo 'Copying dotfiles'
echo '================'

for file in "${dot_files[@]}"
do
  ln -s -F $PWD/$file $HOME/$file
  echo "Linked $file"
done

echo '================'

git submodule init
git submodule update

