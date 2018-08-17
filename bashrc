###############################################################################
# Bash Configurations
############################################################################### 

# Prompt
blue="\[\033[01;34m\]"
orange=$(tput setaf 172)
bold=$(tput bold)
reset=$(tput sgr0)

export PS1="${bold}${blue}\w ${orange}λ ${reset}"

# Colored output for commands
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Load aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.aliases_local ] && . ~/.aliases_local

# Check window size after each command
shopt -s checkwinsize
