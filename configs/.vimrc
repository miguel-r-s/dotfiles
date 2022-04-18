set nocompatible
filetype off

" Mandatory Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'      " plugin manager
Plugin 'Valloric/YouCompleteMe'    " for C++ code completion and exploration (needs to be compliled)
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'        " git inside vim
Plugin 'tpope/vim-sensible'        " sensible defaults
Plugin 'tpope/vim-commentary'      " (un)comment code
Plugin 'scrooloose/nerdtree'       " file explorer
Plugin 'vim-scripts/a.vim'         " jump to source/header file
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'gabesoft/vim-ags'          " text search
Plugin 'mhartington/oceanic-next'  " theme
Plugin 'KeitaNakamura/neodark.vim' " theme
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

syntax enable
 
" Press jk to leave edit mode
imap jk <Esc>

" Status line
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#              " color
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %F                     " file name
set statusline+=%m                       " flag indicating the file was modified[+]
set statusline+=%=                       " go to the righthands side of the statusline
set statusline+=%#CursorColumn#
set statusline+=\ %r                     " read-only flag
set statusline+=\ %y                     " file extension
set statusline+=\ %p%%                   " percentage
set statusline+=\ %l:%c                  " line, column
set laststatus=2                         " always display statusline

" Display tabs as characters
set list
set listchars=tab:→\ 
 
" Whitespace management
set expandtab
set tabstop=4    " Each tab represents 4 spaces
set shiftwidth=4 " >> and << are 4 spaces wide
 
" Highlight search while typing the search words
set hlsearch

" Character to fill the vertical separator
set fillchars+=vert:\  

" Vertical marker
set colorcolumn=120

" Current line is highlighted
set cursorline

let g:mapleader = " "

" NERDTree
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
map <silent> <C-n> :NERDTreeToggle<CR>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
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

" Shift+k to check cppman documentation
autocmd FileType cpp set keywordprg=cppman 

" colorscheme OceanNext
colorscheme neodark 
