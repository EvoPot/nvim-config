require("mason").setup()
require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls","rust_analyzer"}
})
local cmp = require("cmp")

cmp.setup({
	completion = {
		autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertLeave }, -- Trigger completion after text changes or leaving insert mode
	},
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({ select = true }),

		['<A-j>'] = cmp.mapping.select_next_item(),
		['<A-k>'] = cmp.mapping.select_prev_item(),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
})

require("lspconfig").dartls.setup({
            cmd = { "dart", "language-server", "--protocol=lsp" },
            filetypes = { "dart" },
            init_options = {
                closingLabels = true,
                flutterOutline = true,
                onlyAnalyzeProjectsWithOpenFiles = true,
                outline = true,
                suggestFromUnimportedLibraries = true,
            },
            -- root_dir = root_pattern("pubspec.yaml"),
            settings = {
                dart = {
                    completeFunctionCalls = true,
                    showTodos = true,
                },
            },
            on_attach = function(client, bufnr)
            end,
        })
