kk"
"   SETTINGS
"

set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors     
set encoding=UTF-8
set rtp^="/home/jakarlse/.opam/cs3110-2024sp/share/ocp-indent/vim"
set incsearch
set nohlsearch
set splitbelow
set splitright
set ignorecase
set smartcase
set noshowmode


"
"   PLUGINS
"

call plug#begin()
    Plug 'Luxed/ayu-vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'MunifTanjim/nui.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
call plug#end()

lua require('jonkarlsen')


"
"   MAPPINGS
"

let mapleader = " "

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>

nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fg :Telescope live_grep<CR>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>

nnoremap <leader>o  :Neotree<CR>
nnoremap <leader>e  :Neotree toggle<CR>

nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>c :bdelete<Cr>


"
"   OTHER SETTINGS
"

let g:ayucolor="mirage"

colorscheme ayu

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=158}
augroup END
