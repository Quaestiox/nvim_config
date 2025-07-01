require("mason-lspconfig").setup({
	ensure_installed = { "intelephense", "rust_analyzer", "lua_ls", "gopls" },
	automatic_installation = true,
})

