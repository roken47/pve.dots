# -f checks for file system-wide -e checks if file exists in specified location
if [ -e "$HOME/.cargo/env" ]; then
    #echo "Exists"
    source "$HOME/.cargo/env"
fi

( hash cargo 2>/dev/null && export PATH=$HOME/.cargo/bin:$PATH ) || echo -n
