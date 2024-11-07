local map = require("config/utils").map
local nmap = require("config/utils").nmap
local imap = require("config/utils").imap

-- diagnostics
nmap('[d', vim.diagnostic.goto_prev, 'Go to previous diagnostic message')
nmap(']d', vim.diagnostic.goto_next, 'Go to next diagnostic message')
nmap('<leader>e', vim.diagnostic.open_float, 'Open floating diagnostic message')
nmap('<leader>q', vim.diagnostic.setloclist, 'Open diagnostics list')

-- open directory containing current file
vim.cmd( "command! E Explore" )
