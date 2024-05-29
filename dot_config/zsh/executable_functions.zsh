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

    rc)
        hx ~/.local/share/chezmoi/dot_zshrc
        ;;
    alias)
        hx ~/.local/share/chezmoi/dot_config/zsh/executable_aliases.zsh
        ;;
    func)
        hx ~/.local/share/chezmoi/dot_config/zsh/executable_functions.zsh
        ;;
    prompt)
        hx ~/.local/share/chezmoi/dot_config/starship/starship.toml
        ;;
    helix)
        hx ~/.local/share/chezmoi/dot_config/helix/config.toml
        ;;
    *)
        echo "Invalid option. Options included are:"
        echo -n "rc, alias, func, prompt, and helix"
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
update () {
    if [ $1 == "ls" ];then
        sudo nala update && sudo nala list --upgradable
    elif [ $1 == "up" ];then
        sudo nala upgrade
    else
        echo "update <ls | up> ls == list updates, up == upgrade"
    fi
}
