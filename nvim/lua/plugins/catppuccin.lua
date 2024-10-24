return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		require("catppuccin").setup({ flavour = "auto" })
		vim.cmd.colorscheme("catppuccin")
	end,
}
