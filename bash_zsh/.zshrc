# Path to your oh-my-zsh installation.
export ZSH=/home/SiddharthVipul/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#Aliases

#alias l='ls -1'
#alias ll='exa -bghHliS'
#alias jpn='jupyter notebook &> /dev/null &'
#alias cjpn='kill $(pgrep jupyter)'
#alias ae='deactivate &> /dev/null; source ./venv/bin/activate'
#alias de='deactivate'
#alias ccn='conda create --name'
#alias cae='source deactivate &> /dev/null; source activate'
#alias cde='source deactivate'
#alias staffcon="sudo bash /home/SiddharthVipul/changemac.sh"
#alias aadhar-copy-id="ssh-copy-id"
#alias sl='ls'
#Paths
export PATH="/home/SiddharthVipul/anaconda3/bin:$PATH"


#alias irc='ssh root@139.59.87.240'
compdef dnf=yum
#alias trello='/home/SiddharthVipul/Trello/Trello &> /dev/null'
#alias rdj='docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts'
#alias jjb='jenkins-jobs'
#
#echo -ne " Hello Vipul ... Its "; date '+%A,%-d %B %Y'""
#source $HOME/.shells/defaults
#source $HOME/.shells/functions
#source $HOME/.shells/exports
source $HOME/.shells/alias
#source $HOME/.shells/prompt
