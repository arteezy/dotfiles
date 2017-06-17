# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails gem bundler dotenv heroku osx rake-fast postgres npm node sublime gitignore)

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim +star' # Still vim :)
fi

# less syntax highlighter
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# PATHs
#export JAVA_HOME=$(/usr/libexec/java_home)
export MANPATH=$MANPATH:/usr/local/man
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.6/site-packages
export GOPATH=~/go
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$PATH:`yarn global bin`

eval "$(rbenv init -)"

# Alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -lH'

alias ls='ls -hFG'
alias clr='clear'
alias cls='clear'
alias tree='tree -C'

alias y='yarn'
alias yo='yarn outdated'
alias yu='yarn upgrade'
alias yui='yarn upgrade-interactive'

alias l='exa -l'
alias la='exa -la'
