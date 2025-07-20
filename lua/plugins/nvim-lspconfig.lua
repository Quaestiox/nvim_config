local lspconfig = require("lspconfig")

local function enable_lsp()
	-- Rust
--	lspconfig.rust_analyzer.setup({})

	-- PHP
	lspconfig.intelephense.setup({})

	-- Lua
	lspconfig.lua_ls.setup({})

	-- Haskell
	-- lspconfig.hls.setup({})

	-- Golang
	lspconfig.gopls.setup({})

	-- Typescript/Javascript
	lspconfig.ts_ls.setup({})
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
