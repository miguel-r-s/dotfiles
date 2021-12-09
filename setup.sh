OLDFILESDIR=/var/old_dotfiles/
echo "Setting new dotfiles; moving previous ones to ${OLDFILESDIR}"

mkdir -p ${OLDFILESDIR}
mv ~/.bash_aliases ~/.vimrc ~/.tmux.conf ${OLDFILESDIR}

ln -s $(pwd)/configs/bash_aliases ~/.bash_aliases
ln -s $(pwd)/configs/vimrc        ~/.vimrc
ln -s $(pwd)/configs/tmux.conf    ~/.tmux.conf
ln -s $(pwd)/starship.conf        ~/.config/starship.toml
tmux source-file ~/.tmux.conf

