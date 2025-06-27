require("mason-lspconfig").setup({
	ensure_installed = { "intelephense", "rust_analyzer", "lua_ls" },
	automatic_installation = true,
})

