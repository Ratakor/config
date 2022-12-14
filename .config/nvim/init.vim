" Automatic vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Mofiqul/dracula.nvim' " dracula theme with treesitter
"Plug 'ellisonleao/gruvbox.nvim' " gruvbox theme
Plug 'mhinz/vim-startify' " start screen
Plug 'bronson/vim-trailing-whitespace' " FixWhitespace
Plug 'airblade/vim-gitgutter' " hud for git in vim
"Plug 'tpope/vim-fugitive' " git in vim
Plug 'nvim-lua/plenary.nvim' " dependency for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } " fuzzy finder
Plug 'nvim-lualine/lualine.nvim' " bottom bar
Plug 'kyazdani42/nvim-web-devicons' "fancy icons
Plug 'preservim/nerdtree' " vs code be like
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto-Completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax color
Plug 'p00f/nvim-ts-rainbow' " funny brackets
"Plug 'puremourning/vimspector' " Debugger

"Plug 'OmniSharp/omnisharp-vim' " C# syntax
"Plug 'neovim/nvim-lspconfig'
"Plug 'dense-analysis/ale'
"Plug 'vim-syntastic/syntastic'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " xdg-open doesn't work

call plug#end()

source ~/.config/nvim/lua.vim
source ~/.config/nvim/basics.vim
source ~/.config/nvim/coc.vim
"source ~/.config/nvim/lspconfig.vim

let g:vimspector_enable_mappings = 'HUMAN'

" Open Telescope with <C-S>
nnoremap <C-S> :Telescope find_files<CR>

" Open NERDTree with <C-N>
nnoremap <C-N> :NERDTreeToggle<CR>

" Disable OmniSharp Highlighting
"let g:OmniSharp_highlighting = 0

" Omnisharp + syntastic
" :OmniSharpGlobalCodeCheck
" let g:syntastic_cs_checkers = ['code_checker']

" ALE + OmniSharp
"let g:ale_linters = { 'cs': ['OmniSharp'] }
