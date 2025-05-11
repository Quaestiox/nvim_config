require("mason-lspconfig").setup({
	--    automatic_enable = false
	ensure_installed = { "intelephense", "rust_analyzer" },
	automatic_installation = true,
})
