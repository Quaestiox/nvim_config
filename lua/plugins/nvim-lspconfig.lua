local lspconfig = require("lspconfig")

-- Rust
lspconfig.rust_analyzer.setup({
	cmd = { "rust-analyzer" },
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})

-- PHP
lspconfig.intelephense.setup({})
