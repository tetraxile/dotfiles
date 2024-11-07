return {
	"ton/vim-alternate",
	init = function()
		vim.g.AlternatePaths = {"../include", "../src", ".", ".."}

		local nmap = require("config/utils").nmap
		nmap("<F4>", ":Alternate<CR>", "Switch to alternate file")
	end,
}
