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
nnoremap <silent> <F4> :NERDTreeToggle<CR>
map <silent> <F5> <Plug>TaskList
cabbr <expr> %% expand('%:p:h')

nnoremap ; :

set listchars=tab:▸\ ,eol:¬
set list

set laststatus=2

set incsearch
set ignorecase
set smartcase

set exrc
set secure

set wildignore+=*.stl,*.3mf

inoremap kj <Esc>

let g:detectindent_preferred_expandtab = 1 
let g:detectindent_preferred_indent = 2

autocmd BufReadPost * :DetectIndent

set hidden

let g:terraform_fmt_on_save = 1

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['typescript-language-server', '--stdio'],
  \ 'typescript': ['typescript-language-server', '--stdio'],
  \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
  \ 'vue': ['vls'],
  \ 'terraform': ['terraform-lsp'],
  \ 'vim': ['vim-language-server', '--stdio'],
  \ 'go': ['gopls'],
  \ 'openscad': ['openscad-lsp', '--stdio'],
  \ 'cpp': ['clangd-13'],
  \ 'python': ['pyls'],
  \ 'rust': ['rls'],
  \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
noremap Zn :call LanguageClient#textDocument_rename()<CR>
