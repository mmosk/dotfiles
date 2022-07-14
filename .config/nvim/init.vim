set termguicolors
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set signcolumn=yes
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=8
set undofile
set ignorecase
set smartcase
set noswapfile
set clipboard=unnamed
set laststatus=0

call plug#begin('~/.config/nvim/plugged')
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()

lua require('plugins')

colorscheme monokai

nnoremap <C-p> :Telescope find_files<Cr>

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
