" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here
    Plugin 'Syntastic' "uber awesome syntax and errors highlighter
    Plugin 'https://github.com/tpope/vim-fugitive' "So awesome, it should be illegal
    Plugin 'wincent/command-t'
    Plugin 'scrooloose/nerdtree'
    Plugin 'terryma/vim-expand-region'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
"    Plugin 'yuttie/comfortable-motion.vim'
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
"    colorscheme solarized
    syntax on                      " enable syntax

" Setting up Vundle - the vim plugin bundler end
"
" Toggle nerd tree
map <C-m> :NERDTreeToggle<CR>
" Find file in the nerd tree
map <C-f> :NERDTreeFind<CR>
" Close vim the only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

map <C-p> :Files<CR>
set tabstop=4 shiftwidth=4 expandtab

"packadd YouCompleteMe

set number
set relativenumber
set splitright
set incsearch
set hlsearch
set ignorecase

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

