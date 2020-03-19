ZSH_DISABLE_COMPFIX=true
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH=/Users/jasonfreeman/.oh-my-zsh
export ERL_AFLAGS="-kernel shell_history enabled"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# source $HOME/.rvm/scripts/rvm

# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

eval "$(scmpuff init -s)"

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias adb='/Users/jasonfreeman/Library/Android/sdk/platform-tools/adb'
alias crd="cordova"
alias crdplt='cordova platform'
alias crdplg='cordova plugin'
alias crdpltaa='cordova platform add android'
alias crdpltrma='cordova platform remove android'
alias crdpltai='cordova platform add ios'
alias crdpltrmi='cordova platform remove ios'
alias crdplga='cordova plugin add'
alias crdplgrm='cordova plugin remove'
alias crdba='cordova build android'
alias crdbi='cordova build ios'
alias crdema='cordova emulate android'
alias crdemi='cordova emulate ios'
alias adbdev='adb devices'
alias findserv='f() { lsof -wni tcp:$1 };f'
alias rg='rubocop-git'
alias heroky='heroku'
alias gundoc='git reset HEAD~'
alias gbcopy='git branch | grep '^\*' | cut -d' ' -f2 | pbcopy'

#ssh
alias ssh-api="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-35-182-167-161.ca-central-1.compute.amazonaws.com"
alias ssh-api-staging="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-52-60-182-41.ca-central-1.compute.amazonaws.com"
alias ssh-app-staging="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-35-182-121-159.ca-central-1.compute.amazonaws.com"
alias ssh-spindle="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-35-183-23-110.ca-central-1.compute.amazonaws.com"
alias ssh-spindle-staging="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-35-183-72-44.ca-central-1.compute.amazonaws.com"
alias ssh-api-db="ssh -i ~/.ssh/will-ws.pem ec2-user@ec2-35-182-161-63.ca-central-1.compute.amazonaws.com"

alias gbcleanup="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d && git remote prune origin"
alias ghreset="git reset --hard origin/$(current_branch)"
alias branch="echo $(current_branch)"
alias gdh="gd HEAD~1"
alias gfco='f() { git fetch origin $1 && git checkout &1 };f'
alias dc="docker-compose"

function color {
    case $1 in
    green)
    echo -e "\033]6;1;bg;red;brightness;0\a"
    echo -e "\033]6;1;bg;green;brightness;128\a"
    echo -e "\033]6;1;bg;blue;brightness;0\a"
    ;;
    fart)
    echo -e "\033]6;1;bg;red;brightness;144\a"
    echo -e "\033]6;1;bg;green;brightness;238\a"
    echo -e "\033]6;1;bg;blue;brightness;144\a"
    ;;
    red)
    echo -e "\033]6;1;bg;red;brightness;255\a"
    echo -e "\033]6;1;bg;green;brightness;0\a"
    echo -e "\033]6;1;bg;blue;brightness;0\a"
    ;;
    orange)
    echo -e "\033]6;1;bg;red;brightness;255\a"
    echo -e "\033]6;1;bg;green;brightness;165\a"
    echo -e "\033]6;1;bg;blue;brightness;10\a"
    ;;
    blue)
    echo -e "\033]6;1;bg;red;brightness;30\a"
    echo -e "\033]6;1;bg;green;brightness;144\a"
    echo -e "\033]6;1;bg;blue;brightness;255\a"
    ;;
    esac
 }

. $HOME/.asdf/completions/asdf.bash

. $HOME/.asdf/asdf.sh

eval "$(direnv hook zsh)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f "/Users/jasonfreeman/.shopify-app-cli/shopify.sh" ] && source "/Users/jasonfreeman/.shopify-app-cli/shopify.sh"
