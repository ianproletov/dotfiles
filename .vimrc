set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'glepnir/oceanic-material'
Plugin 'tomasiser/vim-code-dark'
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
"Plugin 'shirk/vim-gas'

call vundle#end()
filetype plugin indent on

let g:syntastic_nasm_nasm_args = '-f elf64'
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

"au CursorHold,CursorHoldI * checktime
"au FocusGained,BufEnter * :checktime
set encoding=utf8
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent

let g:gitgutter_terminal_reports_focus=0

set number
set autoread
syntax on
colorscheme codedark
let g:airline_theme = 'codedark'
set background=dark
autocmd BufNew,BufRead *.lst set ft=nasm
autocmd BufNew,BufRead *.asm set ft=nasm
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"mappings
map <C-n> :NERDTreeToggle<CR>
