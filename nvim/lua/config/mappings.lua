local map = require("config/utils").map
local nmap = require("config/utils").nmap
local imap = require("config/utils").imap

-- diagnostics
nmap('[d', vim.diagnostic.goto_prev, 'Go to previous diagnostic message')
nmap(']d', vim.diagnostic.goto_next, 'Go to next diagnostic message')
nmap('<leader>e', vim.diagnostic.open_float, 'Open floating diagnostic message')
nmap('<leader>q', vim.diagnostic.setloclist, 'Open diagnostics list')

-- set telescope keybinds
nmap('<leader>ss', require('telescope.builtin').builtin, '[S]earch [S]elect Telescope')
nmap('<leader>gf', require('telescope.builtin').git_files, 'Search [G]it [F]iles')
nmap('<leader>sf', require('telescope.builtin').find_files, '[S]earch [F]iles')
nmap('<leader>sh', require('telescope.builtin').help_tags, '[S]earch [H]elp')
nmap('<leader>sw', require('telescope.builtin').grep_string, '[S]earch current [W]ord')
nmap('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')
nmap('<leader>sd', require('telescope.builtin').diagnostics, '[S]earch [D]iagnostics')
nmap('<leader>sr', require('telescope.builtin').resume, '[S]earch [R]esume')

-- hex dump display
nmap('<leader>x', require('hex').toggle, "Toggle hex display")

-- switch between source and header files
nmap("<F4>", ":Alternate<CR>", "Switch to alternate file")

-- open directory containing current file
vim.cmd( "command! E Explore" )
