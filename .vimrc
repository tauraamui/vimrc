call plug#begin()
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '~/go/bin/gocode'
call plug#end()

let g:go_fmt_command = "goimports"

func! WordProcessor()
    " movement changes
    map j gj
    map k gk
    " formatting text
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap 
    setlocal linebreak
    " spelling and thesaurus
    " setlocal spell spelllang=en_us
    set complete+=s
endfu
com! WP call WordProcessor()

set number
syntax enable
colo monokai 
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
