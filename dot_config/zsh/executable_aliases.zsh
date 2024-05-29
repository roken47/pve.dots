# === [ FIND YOUR IP & PORTS ] ===
app () {
	ip a | grep eth | awk '{ print $2 }' 
	ss -tunlp
}

# === [ PVE ] ===
# gum script to choose a container to enter based on status
alias jf="sudo pct enter 100";
alias dns1="sudo pct enter 200";
# etc

alias pctls="sudo pct list"
alias pctgo="sudo pct enter"
alias pctkill="sudo pct stop"
alias pcton="sudo pct start"
alias pctedit="sudo hx /etc/pve/lxc"

# === [ MISC ] ===
alias fetch=macchina
alias src="source ~/.zshrc"
alias c=clear
alias top=btop
alias nala="sudo nala"

# === [ EXA ] ===
alias ls="exa -x --color=always --sort name --group-directories-first"
alias ll="exa -alhg --color=always --sort name --group-directories-first"
alias la="exa -ahg --color=always --sort name --group-directories-first"
alias lt="exa --color=always --sort name --tree"
alias lg="exa --color=always --sort name --git -lah"

# === [ CAT ] ===
alias cat=batcat

# === [ GIT ] ===
alias gst="git status"
alias gaa="git add --all"
alias gps="git push"
alias gcm="git commit -m"
alias gpl="git pull"
alias gcl="git clone"

# === [ SH / FUNC ] ===
alias gitup="_gitup"
alias aptup="debup.sh"
alias cfg=_config
