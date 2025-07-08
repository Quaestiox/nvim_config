local lspconfig = require("lspconfig")

local function enable_lsp()
-- Rust
lspconfig.rust_analyzer.setup({})

-- PHP
lspconfig.intelephense.setup({})

-- Lua
lspconfig.lua_ls.setup({})

-- Haskell
-- lspconfig.hls.setup({})

-- Golang
lspconfig.gopls.setup({})

end

enable_lsp()


