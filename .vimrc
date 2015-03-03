set nocompatible

execute pathogen#infect()

set backspace=indent,eol,start

set history=1000
set ruler
set number
set showcmd
set incsearch
set hlsearch
set linebreak
if exists('&breakindent') 
    set breakindent
endif

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

command! WS w !sudo tee %

noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
noremap <silent> ^ g^
noremap <silent> _ g_

noremap <silent> Y y$

if has('mouse')
    set mouse=a
endif

if &t_Co > 2 || has("gui_running")
    syntax on
    filetype plugin indent on
endif

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set laststatus=2
let g:aitline_powerline_fonts=1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled=1

nmap <F3> :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup=1

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END

hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only=1
