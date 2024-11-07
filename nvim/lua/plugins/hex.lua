return {
	"RaafatTurki/hex.nvim",
	opts = {},
	config = function()
		local nmap = require("config/utils").nmap
		nmap('<leader>x', require('hex').toggle, "Toggle hex display")
	end,
}
