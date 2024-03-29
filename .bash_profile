# PATH
export PATH="$HOME/usr/local/bin:$HOME/.rbenv/bin:$HOME/usr/local/sbin:$PATH"
export PATH="/Users/pabloalonso/.rbenv/versions/1.9.3-p194/bin:$PATH"

export EDITOR=vim

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Git autocompletion & prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh

# PS1='\e[0;34m\]\u\e[m \e[0;31m\w\e[m \e[0;31m$(__git_ps1 " (%s)")\e[m \$ ' 
PS1='\[\033[1;34m\]\u \[\033[0;32m\]\w \[\033[0;35m\]$(__git_ps1 " (%s)") \[\033[1;37m\]\$ ' 

alias g=git
alias be="bundle exec"
alias bx="bundle exec"
alias gr="grep -rin --color"
