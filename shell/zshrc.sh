PS1="%F{cyan}%1~ : %f"

alias safari="open -a Safari"
alias brave="open -a Brave\ Browser"
alias chrome="open -a Google\ Chrome"
alias timesheet="open -u https://thoughtworks.lightning.force.com/lightning/n/TimeEntry"
alias ga="git add"
alias gst="git status"
alias gc="git commit -m"
alias gp="git push"
alias grep="grep --color=auto"
alias ls=lsd
alias psql="psql -U postgres -h localhost"
alias pgcli="pgcli -U postgres -h localhost"
alias glo="git log --oneline"
alias glog="git log --oneline --all --graph --decorate"

eval "$(jump shell zsh)"

setopt autocd

export PATH=/System/Volumes/Data/Library/PostgreSQL/17/bin:$PATH
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
