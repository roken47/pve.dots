# Functions

# standard 3 git commands, I use: add, commit, push
_gitup() {
    git add --all
    git commit --quiet --message "$1"
    git push --quiet
    echo "git push <<Done>>"
}

# alias + case: cfg <config file>
_config() {

case $1 in

    nix)
        sudo hx ~/dev/nixos-conf/configuration.nix
        ;;
    rc)
        sudo hx ~/.dotfiles/.zshrc
        ;;
    alias)
        sudo hx ~/.dotfiles/.zsh/aliases.zsh
        ;;
    func)
        sudo hx ~/.dotfiles/.zsh/functions.zsh
        ;;
    prompt)
        sudo hx ~/.dotfiles/.config/starship/starship.toml
        ;;
    helix)
        sudo hx ~/.dotfiles/.config/config.toml
        ;;
    *)
        echo "Invalid option. Options included are:"
        echo -n "nix, rc, alias, func, prompt, and helix"
        return 1
        ;;
esac

}

mkcd() {
    sudo mkdir -p -- "$1" && cd -P -- "$1"
}

fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
