# === [ FIND YOUR IP ] ===
if [[ $(uname) == 'Darwin' ]]; then
	# MacOS
        alias myip="ifconfig | grep broadcast | awk '{ print \$2 }'"
    else
	# Linux
        alias myip="ip a | grep eth | awk '{ print $2 }' "
fi

# === [ SSH ] ===
alias pve="ssh sysadmin@192.168.1.103" # Proxmox
alias jf="ssh admin@192.168.50.20" # Jellyfin

# === [ PVE ] ===
pve="pve$"
if [[ $(uname -r) =~ $pve ]]; then
	# Add your PVE aliases here
	alias jf="sudo pct enter 100";
	alias dns1="sudo pct enter 200";
	# etc
else
	echo -n
fi

alias pctls="sudo pct list"
alias pctgo="sudo pct enter"
alias pctkill="sudo pct stop"
alias pcton="sudo pct start"
alias pctedit="sudo hx /etc/pve/lxc"

# === [ MISC ] ===
alias nf=neofetch
alias src="source ~/.zshrc"
alias c=clear
alias top=btm

# === [ EXA ] ===
alias l="exa -x --color=always --sort name --group-directories-first"
alias ll="exa -alhg --color=always --sort name --group-directories-first"
alias la="exa -ahg --color=always --sort name --group-directories-first"
alias lt="exa --color=always --sort name --tree"
alias lg="exa --color=always --sort name --git -lah"

# === [ CAT ] ===
( hash bat 2>/dev/null && alias cat=bat ) || alias cat=batcat

# === [ GIT ] ===
alias gst="git status"
alias gaa="git add --all"
alias gps="git push"
alias gcm="git commit -m"
alias gpl="git pull"
alias gcl="git clone"

# === [ NIXOS ] ===
alias nixbuild="sudo nixos-rebuild switch"

# === [ MACOS ] ===
alias ofd="open ."
alias opa="open /Applications"
alias dot="open ~/.dotfiles"

# === [ SH / FUNC ] ===
alias gitup="_gitup"
alias aptup="debup.sh"
alias cfg=_config
