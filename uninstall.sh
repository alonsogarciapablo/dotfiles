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

echo 'Removing dotfiles'
echo '================'

for file in "${dot_files[@]}"
do
  rm -rf $HOME/$file
  echo "Removed $HOME/$file"
done

echo '================'

