set nocompatible
call pathogen#infect()
syntax enable
set t_Co=256
set background=light
colorscheme solarized

set smarttab
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set nofoldenable
filetype plugin indent on
set number
set colorcolumn=79
set cursorline
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

nnoremap <silent> <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <silent> <F4> :NERDTreeToggle<CR>
map <silent> <F5> <Plug>TaskList

if filereadable("/usr/local/bin/ctags")
  let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

nnoremap ; :

set listchars=tab:▸\ ,eol:¬
set list

set laststatus=2

set incsearch
set ignorecase
set smartcase

set exrc
set secure

inoremap kj <Esc>

autocmd BufReadPost * :GuessIndent
