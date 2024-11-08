return {
	"jakemason/ouroboros.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("ouroboros").setup({
			extension_preferences_table = {
				c = {h = 2, hpp = 1},
				h = {c = 2, cpp = 1},
				cpp = {h = 2, hpp = 1},
				hpp = {cpp = 1, c = 2},
			},
		})

		local nmap = require("config/utils").nmap
		nmap("<F4>", ":Ouroboros<CR>", "Switch to alternate file")
		vim.cmd( "command! A Ouroboros" )
	end,
}
