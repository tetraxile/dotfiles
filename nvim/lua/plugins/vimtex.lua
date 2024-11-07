return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "mupdf"
		vim.g.vimtex_matchparen_enabled = 1
		vim.g.vimtex_imaps_enabled = 0
	end
}
