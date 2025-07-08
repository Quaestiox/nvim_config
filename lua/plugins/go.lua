
--require("go.format").gofmt()  -- gofmt only
--require("go.format").goimports()  -- goimports + gofmt

require("go").setup()

-- Run gofmt + goimports on save

--local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.go",
--  callback = function()
--   require('go.format').goimports()
--  end,
--})
