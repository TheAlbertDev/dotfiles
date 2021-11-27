


" Global configuration

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab


" Mappings

:tnoremap <ESC> <C-\><C-n>
:nnoremap <C-T>h <C-W>s
:nnoremap <C-T>v <C-W>v

" Plugins

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
