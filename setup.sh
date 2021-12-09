OLDFILESDIR=dotfiles_backup/

echo "Setting new dotfiles; moving previous ones to $(pwd)/${OLDFILESDIR}"
mkdir -p ${OLDFILESDIR}

move_to_backup () {
	mv "$1" ${OLDFILESDIR};
}

set_symlink    () {
	ln -s $(pwd)/$1 $2;
}

deploy_dotfile () {
	move_to_backup $2;
	set_symlink $1 $2;
}

deploy_dotfile    configs/.bash_aliases   ~/.bash_aliases
deploy_dotfile    configs/.vimrc          ~/.vimrc
deploy_dotfile    configs/.tmux.conf      ~/.tmux.conf
deploy_dotfile    configs/starship.toml   ~/.config/starship.toml

tmux source-file ~/.tmux.conf
echo "... done!"
