#personal settings -=-= START =-=-

alias n="nvim -p"
alias vim="nvim -p"
export TERM=xterm-256color
export EDITOR=$(which nvim)
#export TERM=cygwin
export PIPENV_VENV_IN_PROJECT=1
export PYTHONDONTWRITEBYTECODE=1
export GOPATH=$HOME/Documents/code/go
export GOROOT=/opt/go
export PATH=$GOROOT/bin/:$GOPATH/bin:$HOME/.bin/:$HOME/Documents/apps/bin/:$PATH
export HISTCONTROL=ignorespace

# android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools/:$PATH
export JAVA_HOME=$HOME/Documents/apps/android-studio/jbr/

# cross-platform
export PATH=$HOME/Documents/apps/flutter/bin/:$PATH

if [ -f ~/.bin/.git-completion.bash ]; then
  . ~/.bin/.git-completion.bash
fi

export xclip="xclip -selection c"
#export MC_SKIN=$HOME/.mc/lib/mc-solarized/solarized.ini
export GPG_TTY=$(tty)

#scl enable devtoolset-8 -- bash
#export LFS=/mnt/lfs

if [[ ! -s "$HOME/.bin/git-prompt.sh" || ! -s "$HOME/.bin/git-completion.sh" ]]; then
  curl -fLo ~/.bin/git-prompt.sh --create-dirs \
    "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
  curl -fLo ~/.bin/git-completion.sh --create-dirs \
    "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"
fi

export GIT_PS1_SHOWDIRTYSTATE=1
source "$HOME/.bin/git-prompt.sh"
source "$HOME/.bin/git-completion.sh"

#export PS1='\w$(__git_ps1 " (%s)")\$ '
export PS1='[\u@\[\e[42m\]\h\[\e[0m\] \W$(__git_ps1 " (%s)")]\$ '
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#export PS1="[\u@\h \W]\\$ "

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

complete -C /usr/bin/terraform terraform
#personal settings -=-= END =-=-
