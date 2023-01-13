set number 
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set nohlsearch 
set hidden
set noerrorbells 
set nowrap
set noswapfile
set nobackup 
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set signcolumn=yes
syntax on
filetype plugin indent on
 
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/roflolilolmao/oceanic-next.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'elixir-editors/vim-elixir'
call plug#end()


colorscheme OceanicNext

let mapleader = " "
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-t> :Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules", "deps", "_build"}} }


nnoremap <leader>nf :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <silent>K :call <SID>show_documentation()<CR>

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif
