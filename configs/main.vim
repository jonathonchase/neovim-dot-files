set nocompatible

let &shell = has('win32') ? 'powershell' : 'pwsh'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set shellquote= shellxquote=

let mapleader=","

let s:using_snippets=1

call plug#begin("~/.nvim/plugged")
Plug 'orangeT/vim-csharp'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'nanotech/jellybeans.vim'
"Onnisharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
"Ionide
Plug 'ionide/Ionide-vim'

Plug 'neovim/nvim-lspconfig'
if has('nvim')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-lsp'

call plug#end()

set termguicolors
set background=dark
colorscheme jellybeans
syntax on

inoremap jk <Esc>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set nu rnu
set ruler
set showcmd
set noswapfile
set noshowmode
set cursorline

set autoindent
set smartindent

set wildmenu
set lazyredraw
set showmatch

set clipboard=unnamedplus

let g:notes_directories = ['~/Documents/Notes']

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_right_sep = ""
let g:airline_left_sep = ""

" NERDTREE
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeWinSize=40

" Set python path
let g:python3_host_prog = '/Python39/python.exe'

source ~/.nvim/configs/omnisharp.vim
source ~/.nvim/configs/ionide.vim
