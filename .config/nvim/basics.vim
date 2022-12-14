" Enable line number and relative number
set nu rnu

" disable the mouse
set mouse=

" better <C-d> and <C-u>
nnoremap <C-d> <C-d>zz
nnoremap <c-u> <c-u>zz

" better j, k, 0 and $
" or use gqq
"nnoremap j gj
"nnoremap k gk
"nnoremap 0 g0
"nnoremap $ g$

" Add a column at 80 characters
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" Move between buffers
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>

" Map yank to the clipboard buffer
set clipboard+=unnamedplus
"set clipboard=unnamed

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
:filetype indent on
:filetype plugin on

" Theme
set background=dark
syntax enable
colorscheme dracula

" Autocorrect
abbr hte the
abbr git Git
