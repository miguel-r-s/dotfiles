set nocompatible
filetype off

" Mandatory Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/a.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'gabesoft/vim-ags'
call vundle#end()

filetype plugin indent on    " required

" Split in a way that makes sense. Defaults are madness.
set splitright
set splitbelow

" Line numbers
set number
set relativenumber

" Case settings.
set ignorecase " ignore by default
set smartcase  " consider case if any of the search characters are caps

syntax on
 
" Press jk to leave edit mode
imap jk <Esc>

" Make sure it always shows
set laststatus=2
 
" Display tabs as characters
set list
set listchars=tab:→\ 
 
" Whitespace management
set noexpandtab
set tabstop=4    " Each tab represents 4 spaces
set shiftwidth=4 " >> and << are 4 spaces wide
 
" Highlight search while typing the search words
set hlsearch

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1

let mapleader=" "
 
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_use_clangd = 1
 
nnoremap <leader>jd      :YcmCompleter GoTo<CR>
nnoremap <leader>jjdef   :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jjdec   :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jt      :YcmCompleter GetType<CR>
nnoremap <leader>jfix    :YcmCompleter FixIt<CR>
nnoremap <leader>jref    :YcmCompleter RefactorRename<Space>
nnoremap <leader>jjdiag  :YcmShowDetailedDiagnostic<CR>
 
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Save file.
nnoremap <leader>gs :w<CR>
imap <leader>gs <Esc>:w<CR>

" Character to fill the vertical separator
set fillchars+=vert:\  

" Vertical marker
set colorcolumn=120

" Gruvbox config
set bg=light

" Shift+k to check cppman documentation
autocmd FileType cpp set keywordprg=cppman 
