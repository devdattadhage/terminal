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

# Activate plugins
# Installed via Homebrew
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

setopt PROMPT_SUBST  
# Ensure prompt command substitution

# Function to get the current Git branch
git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "%F{yellow} %B%b $branch%f"
  fi
}

# Function to check for JavaScript files and get Deno version
get_deno_version() {
  if [ -n "$(find . -maxdepth 1 -type f -name '*.js')" ]; then
    echo " %F{green}🦕 $(deno -v | cut -d' ' -f2)%f"
  else
    echo ""
  fi
}

# Function to check for JavaScript files and get Node.js version
get_node_version() {
  if [ -n "$(find . -maxdepth 1 -type f -name '*.js')" ]; then
    echo " %F{green}⚡️ $(node -v)%f"
  else
    echo ""
  fi
}

# Function to check for Python files and get Python version
get_python_version() {
  if [ -n "$(find . -maxdepth 1 -type f -name '*.py')" ]; then
    echo " %F{blue}🐍 $(python3 --version | cut -d' ' -f2)%f"
  else
    echo ""
  fi
}


# Custom prompt with runtime and Git branch info
# PROMPT='%F{blue}%t %1~%f$(git_branch) $(get_deno_version): %B'
# PS1="%F{cyan}%1~ : %f"
PROMPT='%F{cyan}%1~%f$(git_branch)$(get_node_version)$(get_python_version)$(get_deno_version) : '
