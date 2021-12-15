
" Global configuration

set encoding=utf-8
set number
set relativenumber
set linebreak
set tabstop=4
set shiftwidth=4
set expandtab

set list
set listchars=tab:▶\ ,extends:❯,precedes:❮,trail:·

set scrolloff=10
set sidescrolloff=5


" Mappings

:tnoremap <ESC> <C-\><C-n>
:nnoremap <C-T>h <C-W>s
:nnoremap <C-T>v <C-W>v


" Plugins

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/goyo.vim' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-texlab',
  \ 'coc-vimtex' 
  \ ]

nnoremap <silent> K :call CocAction('doHover')<CR>
inoremap <silent><expr> <c-space> coc#refresh()

let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline_theme='palenight'
set noshowmode

syntax enable
set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1

" Makes background transparent
hi Normal guibg=NONE ctermbg=NONE

function! s:goyo_leave()
  hi Normal guibg=NONE ctermbg=NONE
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

