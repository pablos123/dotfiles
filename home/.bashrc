# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/bash-completion/completions/git
source ~/.git-prompt.sh # __git_ps1 command in PS1

export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWSTASHSTATE="true"
export GIT_PS1_SHOWUNTRACKEDFILES="true"

# Clean, beatiful prompt
PS1='\e[0;32m \w \e[1;33m $(__git_ps1 "(%s)")\e[0m\n🍂 '

rm () {
    echo "Acordate que borraste la home..."
    command rm -i "$@"
}

source ~/.bashrc_aliases

if [[ -f ~/.work_bashrc ]]; then
    source ~/.work_bashrc
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
