require("core.options")
require("core.keymaps")

require("plugins.plugins")
require("plugins.colorscheme")
require("plugins.nvim-tree")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.toggleterm")
require("plugins.lualine")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.nvim-lspconfig")
require("plugins.cmp")
require("plugins.conform")
require("plugins.markview")
require("plugins.notify")
require("plugins.mason-conform")

vim.diagnostic.config({
	virtual_text = false,
	signs = false,
	underline = false,
	update_in_insert = false,
})
