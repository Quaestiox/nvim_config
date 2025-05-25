require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" },
		go = { "gofmt" },
		php = { "phpcbf" },
		json = { "prettierd" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		css = { "prettierd" },
		html = { "prettierd" },
		python = { "black" },
		c = { "clang-format" },
		--		haskell = { "fourmolu" },
	},
	format_on_save = {
		-- I recommend these options. See :help conform.format for details.
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})
