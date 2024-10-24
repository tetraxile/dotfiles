return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup {
			options = {
				icons_enabled = false,
				theme = "moonfly",
				-- component_separators = "|",
				-- section_separators = "",
			},
			sections = {
				lualine_a = {"mode"},
				lualine_b = {
					"branch",
					{
						"diff",
					},
				},
				lualine_c = {
					{
						"filename",
						path = 1,
					},
					{
						"diagnostics",
						sources = {"nvim_diagnostic"},
					}
				},
				lualine_x = {"encoding", "fileformat", "filetype"},
				lualine_y = {"progress"},
				lualine_z = {"%l:%c"}
			}
		}
	end
}
