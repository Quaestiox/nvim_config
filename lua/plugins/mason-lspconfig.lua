require("mason-lspconfig").setup({
	ensure_installed = { "intelephense", "rust_analyzer", "lua_ls", "gopls", "ts_ls" },
	automatic_installation = true,
})

