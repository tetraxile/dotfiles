return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		require("telescope").setup {
			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
					},
				},
			},
		}

		-- set keybinds
		local nmap = require("config/utils").nmap
		nmap('<leader>ss', require('telescope.builtin').builtin, '[S]earch [S]elect Telescope')
		nmap('<leader>gf', require('telescope.builtin').git_files, 'Search [G]it [F]iles')
		nmap('<leader>sf', require('telescope.builtin').find_files, '[S]earch [F]iles')
		nmap('<leader>sh', require('telescope.builtin').help_tags, '[S]earch [H]elp')
		nmap('<leader>sw', require('telescope.builtin').grep_string, '[S]earch current [W]ord')
		nmap('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')
		nmap('<leader>sd', require('telescope.builtin').diagnostics, '[S]earch [D]iagnostics')
		nmap('<leader>sr', require('telescope.builtin').resume, '[S]earch [R]esume')

		-- enable telescope fzf native, if installed
		pcall(require("telescope").load_extension, "fzf")
	end,
}
