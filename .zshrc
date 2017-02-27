# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

export POWERLEVEL9K_MODE='awesome-fontconfig'
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=10
export POWERLEVEL9K_SHORTEN_DELIMITER="…"
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
export POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↝ "
export POWERLEVEL9K_STATUS_VERBOSE=true

export BULLETTRAIN_TIME_SHOW=false
export BULLETTRAIN_EXEC_TIME_SHOW=true


#↝
if [[ $POWERLEVEL9K_MODE -eq 'awesome-fontconfig' ]]
then
    export POWERLEVEL9K_VCS_GIT_ICON=""
    export POWERLEVEL9K_VCS_BRANCH_ICON="  "
    export POWERLEVEL9K_BATTERY_ICON=$'\UF242 '
    export POWERLEVEL9K_FAIL_ICON=$'\u2718'
    export POWERLEVEL9K_OK_ICON=" "
    export POWERLEVEL9K_HOME_ICON="㑞"

fi
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status jdate time battery )

export TERM="xterm-256color"
export DEFAULT_USER="mahdy"
export WORKON_HOME="/home/mahdy/.virtualenvs"
export VIRTUALENV_PYTHON=`command -v python3`
source /usr/local/bin/virtualenvwrapper.sh
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="bullet-train"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git pip sudo autojump command-not-found virtualenvwrapper)

# User configuration

export PATH="/home/mahdy/.rbenv/shims:/home/mahdy/.rbenv/bin:/home/mahdy/bin/android-sdk-linux/platform-tools:/home/mahdy/bin/android-sdk-linux/tools:/home/mahdy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias fuck)"
#bindkey -s '\el' 'ls\n' 
#bindkey -s "\t\t" 'fuck\n'
