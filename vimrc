set nocompatible
call pathogen#infect()
syntax enable
let g:solarized_termcolors=256
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

let g:detectindent_preferred_expandtab = 1 
let g:detectindent_preferred_indent = 4 

autocmd BufReadPost * :DetectIndent

set hidden

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ 'typescript.tsx': ['javascript-typescript-stdio'],
  \ 'vue': ['vls'],
  \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
