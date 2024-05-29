# Zsh Environments
export PATH=$HOME/.bin:/usr/local/bin:/usr/bin/:$PATH
export PATH=$HOME/.local/bin:$PATH
export HELIX_RUNTIME=~/src/helix/runtime
export EDITOR=hx

if [[ $(uname) == 'Darwin' ]]; then
        # MacOS
        export ICLOUD="~/Library/Mobile Documents/com~apple~Cloud"
        export NU_CONFIG="~/Library/Application\ Support/nushell"
        export HELIX_RUNTIME=~/src/helix/runtime
        export PATH=$HOME/Library/Python/3.9/bin:$PATH
	# Zoxide takes care of these but if I need to use it like:
	# 'cp $ICLOUD/path/to/file destination/path` Z can't or cd
fi
