require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt", lsp_format = "fallback" },
        go = { "gofmt" },
        php = { "phpcbf" },
        json = { "prettier" },
        haskell = { "fourmolu" },
    },
    format_on_save = {
        -- I recommend these options. See :help conform.format for details.
        lsp_format = "fallback",
        timeout_ms = 500,
    },
})
