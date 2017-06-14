# Created by newuser for 5.0.5

#aliases
alias la='ls -a'
alias ll='ls -l'
alias ls='ls -G -F'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias sudo='sudo '

alias gvim='mvim'
alias wgvim='vim'

# env var
export CLICOLOR=1
export SCALA_HOME=/usr/local/share/scala-2.10
export PATH=/usr/local/bin:$PATH:$SCALA_HOME/bin:/usr/texbin
export LANG=ja_JP.UTF-8

# color setting
autoload -Uz colors
colors

# history setting
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# auto complete setting
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'	#upper/lower case
zstyle ':completion:*' ignore-parents parent pwd ..	#ignore ../ directory
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin	#auto complete for sudo
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'	#auto complete for ps

# misc setting
setopt print_eight_bit		#enable japanese file name
setopt no_beep				#disable beep
setopt interactive_comments	#regard '#' as comment symbol
setopt magic_equal_subst	#auto complete for path name after '='
setopt share_history		#sync history b/w zsh processes

# python virtualenv setting
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/sbin:$PATH"

# go lang
if [ -x "`which go`" ]; then
    export GOPATH=$HOME/.go
    export PATH=$PATH:$GOPATH/bin
fi
