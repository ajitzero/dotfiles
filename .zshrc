export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Flutter stuff
export PATH="$PATH:/Users/az/Manually Installed/flutter/bin"

# go-lang stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH="/Users/az/.oh-my-zsh"

export LC_CTYPE=C 
export LANG=C

# fix  for vim: https://stackoverflow.com/a/56743150/8080186
# export LC_ALL=en_US.UTF-8

ZSH_THEME="shades-of-purple"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  brew
  colored-man-pages
  git
  npm
  osx
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Repo: https://github.com/rupa/z
. ~/.z.sh

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Shorthands
alias c="clear"
alias cgst="c && gst"
alias cls="c && ls"
alias l="ls -A"
alias la="ls -lA"
alias ll="ls -l"
alias cx="code ."
alias cc="cd ~/GitHub"
alias lst="tree"

# Delete branch locally
alias gbd="git branch -d" # localBranchName
alias gbD="git branch -D" # same, but forced... or something

# Initial git push
alias gpp="git push --set-upstream origin" # master

# Delete branch remotely
alias gbdr="git push origin --delete" # remoteBranchName

# Sass
alias sassw="sass --watch sass/style.sass:style.css"
alias sasswc="sassw --style compressed"

# Python
alias pip="pip3"
alias pyms="python3 -m http.server --bind localhost"

# Jekyll
alias jekyllsw="bundle exec jekyll serve --watch"

# Gatekeeper disable
# Usage: disablegatekeeper /path/
alias disablegatekeeper="sudo xattr -rd com.apple.quarantine "

# Show random emojis in place of username@devicename
prompt_context() {
  prompt_segment black default "⚡️"
}

# Show only current directory in agnoster theme
prompt_dir() { prompt_segment blue black '%c' }

# Enter key fix
stty sane

# Reminders
echo "Hi Ajit, try: cc, cx"

# source /usr/local/opt/nvm/nvm.sh

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
