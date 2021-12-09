# dotfiles

To setup these dotfiles, download the repo and run `./setup.sh`.
Your old dotfiles will be moved to `dotfiles_backup/` in this directory and the new ones will be setup.

Instead of copying files over, the new files are simply symlinks to the files in this repo under `config/`.


You'll need to manually install two things to make the most of it:

* [Vundle](https://github.com/VundleVim/Vundle.vim): for vim plugin management.
* [Starship](https://starship.rs/): a shell prompt.
* [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe): for C++ code completion and navigation. This will be a headache. If you don't need it , just remove that line from the plugins list in the `.vimrc`.
