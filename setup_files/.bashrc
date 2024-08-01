# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Customize the PS1 prompt
export PS1="\[\e[32m\]\u@\h:\w\$\[\e[0m\] "

# Other settings
shopt -s histappend
shopt -s checkwinsize

# History configuration
HISTSIZE=1000
HISTFILESIZE=2000

# Enable color support for ls and grep
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add user-specific aliases here:
alias conda='mamba'

############################# 
module load gcc