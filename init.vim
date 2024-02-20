"
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


"
"   PLUGINS
"

call plug#begin()
    Plug 'Luxed/ayu-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'ryanoasis/vim-devicons'
call plug#end()


"
"   MAPPINGS
"

let mapleader = " "

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>

nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>fp :Files<CR>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CInstallR>

nnoremap <leader>tt :NERDTreeToggle<CR>
nnoremap <leader>tf :NERDTreeFin<CR>

nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>

"
"   TREESITTER CONFIG
"
 
lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" , "rust" , "typescript" , "yaml" , "json" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


"
"   OTHER SETTINGS
"

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:ayucolor="mirage"
let g:webdevicons_enable_airline_tabline = 1

colorscheme ayu

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=158}
augroup END

autocmd VimEnter * NERDTree
