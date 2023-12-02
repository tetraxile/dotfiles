:set number
:set autoindent

:let mapleader = ","

call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'RaafatTurki/hex.nvim'
Plug 'https://git.sr.ht/~sircmpwn/hare.vim'
Plug 'numToStr/Comment.nvim'

call plug#end()

lua require("hex").setup()
lua require("Comment").setup()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
