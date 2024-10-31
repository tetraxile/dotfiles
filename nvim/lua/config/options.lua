local opt = vim.opt   -- same as :set
local global = vim.g  -- same as g:

opt.number = true              -- enable line numbers
opt.signcolumn = "yes"         -- enable sign column
opt.tabstop = 4                -- pressing <Tab> makes a 4-space tab
opt.shiftwidth = 4             -- adds a 4-space tab when (auto)indenting
opt.clipboard = "unnamedplus"  -- sync clipboard between OS and neovim
opt.ignorecase = true          -- case-insensitive searching...
opt.smartcase = true           -- ...unless \C or capital letter in search
opt.termguicolors = true       -- enable 24-bit colour
opt.fillchars = { eob = ' ' }  -- remove tildes after end of buffer
opt.formatoptions:append('/')  -- don't continue comments after statements on newline
-- opt.updatetime = 250
-- opt.timeoutlen = 300

-- format on save .h and .cpp files
vim.cmd("autocmd BufWritePre *.h,*.cpp lua vim.lsp.buf.format({ async = false })")

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
