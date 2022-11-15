###############################################################################
# Bash Configurations
############################################################################### 

# Prompt
if [[ $- == *i* ]]; then
    blue="\[\033[01;34m\]"
    orange=$(tput setaf 172)
    bold=$(tput bold)
    reset=$(tput sgr0)

    export PS1="${bold}${blue}\w ${orange}λ ${reset}"
fi

# Load aliases
[ -e ~/.aliases ] && . ~/.aliases

# Check window size after each command
shopt -s checkwinsize
