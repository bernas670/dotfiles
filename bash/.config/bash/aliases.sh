alias vim='nvim'
alias v='nvim'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias qb='qutebrowser'

source /usr/share/bash-completion/completions/git
git_alias_complete() {
    local completion=$1
    shift
    for alias in "$@"; do
        __git_complete "$alias" "$completion"
    done
}

alias ga='git add'
alias gaa='git add --all'
git_alias_complete _git_add ga gaa

alias gc='git commit'
alias gca='git commit --all'
alias gcm='git commit --message'
alias gcam='git commit --all --message'
alias gcA='git commit --amend'
alias gcaA='git commit --all --amend'
git_alias_complete _git_commit gc gca gcm gcam gcA gcaA

alias go='git checkout'
git_alias_complete _git_checkout go

alias gs='git status'
alias gss='git status --short'
git_alias_complete _git_status gs gss

alias gll='git log'
alias glo='git log --oneline'
alias glg='git log --oneline --graph --decorate --all'
git_alias_complete _git_log gll glo glg

alias gf='git fetch'
git_alias_complete _git_fetch gf

alias gm='git merge'
git_alias_complete _git_merge gm

alias gp='git push'
alias gpf='git push --force'
git_alias_complete _git_push gp gpf

alias gl='git pull'
git_alias_complete _git_pull gl

alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase --interactive'
git_alias_complete _git_rebase grb grba grbc grbi

alias grh='git reset'
alias grhh='git reset --hard'
git_alias_complete _git_reset grh grhh

