set number

set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json'
  \ ]

let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
set noshowmode

syntax enable
set background=dark
colorscheme solarized
