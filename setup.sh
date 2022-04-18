OLDFILESDIR=dotfiles_backup
DATEMS=$(($(date +%s%N)/1000000))
BACKUPDIR=${OLDFILESDIR}/${DATEMS}

echo "Setting new dotfiles;"
echo "Moving previous ones to $(pwd)/${BACKUPDIR}"

mkdir -p ${BACKUPDIR}

move_to_backup () {
    [ -f "$1" ] && mv "$1" ${BACKUPDIR}
}

set_symlink    () {
    mkdir -p $(dirname $2)
    ln -s $(pwd)/$1 $2
}

deploy_dotfile () {
    move_to_backup $2
    set_symlink $1 $2
}

deploy_dotfile    configs/.bashrc              ~/.bashrc
deploy_dotfile    configs/.bash_aliases        ~/.bash_aliases
deploy_dotfile    configs/.vimrc               ~/.vimrc
deploy_dotfile    configs/.tmux.conf           ~/.tmux.conf
deploy_dotfile    configs/starship.toml        ~/.config/starship.toml
deploy_dotfile    configs/.ycm_extra_conf.py   ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py

tmux source-file ~/.tmux.conf

if ! starship --version &> /dev/null; then
	curl -sS https://starship.rs/install.sh | sh
fi

VUNDLEDIR=~/.vim/bundle/Vundle.vim/
if [ ! -d ${VUNDLEDIR} ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLEDIR}
    vim +qPluginInstall +qall
fi
