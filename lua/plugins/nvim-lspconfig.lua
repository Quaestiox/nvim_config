-- local lspconfig = require("lspconfig")


local function enable_lsp()
	-- Rust

	-- PHP
    vim.lsp.enable('intelephense')

	-- Lua
    vim.lsp.enable("lua_ls")

	-- Haskell
    -- vim.lsp.enable("hls")
    
	-- Golang
    vim.lsp.enable("gopls")

	-- Typescript/Javascript
    vim.lsp.enable("ts_ls")
end


enable_lsp()

--lspconfig.rust_analyzer.setup({
--  settings = {
--    ["rust-analyzer"] = {
--      completion = {
--        autoimport = {
--          enable = true,
--        },
--      },
--      imports = {
--        granularity = {
--          group = "module",
--        },
--        prefix = "self",
--      },
--    }
--  }
--})
--
--
