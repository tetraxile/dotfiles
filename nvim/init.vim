:set number
:set autoindent
:set tabstop=8
:set shiftwidth=4
:set expandtab
:set softtabstop=0

:let mapleader = ","

call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'RaafatTurki/hex.nvim'

call plug#end()

lua require 'hex'.setup()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
