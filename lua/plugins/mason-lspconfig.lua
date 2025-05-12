require("mason-lspconfig").setup({
    --    automatic_enable = false
    ensure_installed = { "intelephense", "rust_analyzer", "lua_ls", "hls" },
    automatic_installation = true,

})
