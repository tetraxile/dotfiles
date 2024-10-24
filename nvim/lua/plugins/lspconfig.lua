local on_attach = function(_, bufnr)
	local map = require("config/utils").map

	local opts = { buffer = bufnr }

	map("n", "gd", vim.lsp.buf.definition, "[G]oto [D]efinition", opts)
	map("n", "gr", vim.lsp.buf.references, "[G]oto [R]eferences", opts)
	map("n", "gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation", opts)
	map("n", "gy", vim.lsp.buf.type_definition, "[G]oto T[y]pe definition", opts)
	map("n", "gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration", opts)
	map("n", "K", vim.lsp.buf.hover, "Hover", opts)
	map("n", "gK", vim.lsp.buf.signature_help, "Signature Help", opts)
	map("i", "<c-k>", vim.lsp.buf.signature_help, "Signature Help", opts)
	map({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", opts)
	map("n", "<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame", opts)
end


return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- show LSP status on open
		{ "j-hui/fidget.nvim", opts = {} },
		-- display function signatures
		{ "ray-x/lsp_signature.nvim", opts = {} },
	},
	config = function()
		local nvim_lsp = require("lspconfig")

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		-- capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		local servers = {
			bashls = true,
			pyright = true,
			clangd = true,
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							-- get the language server to recognise the `vim` global
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			}
		}

		-- call `setup` on each of the servers above
		for name, config in pairs(servers) do
			if config == true then
				config = {}
			end
			config = vim.tbl_deep_extend(
				"force",
				{},
				{
					capabilities = capabilities,
					on_attach = on_attach,
					flags = {
						debounce_text_changes = 150,
					},
				},
				config
			)
			nvim_lsp[name].setup(config)
		end
	end
}
