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

-- Add hover handler
vim.keymap.set('n', '<C-3>', vim.lsp.buf.hover, { buffer = 0, desc = "Show type info" })

-- Enable inlay hints for Dart
require("lspconfig").dartls.setup({
  -- ... existing config ...
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true,
      inlayHints = {
        parameterNames = true,
        parameterTypes = true,
        variableTypes = true,
        functionReturnTypes = true,
      },
    },
  },
})




require("nvim-treesitter.configs").setup({
  indent = {
    enable = true,
    disable = {},
  },
})
