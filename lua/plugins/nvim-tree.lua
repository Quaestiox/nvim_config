require("nvim-tree").setup({
	git = {
		enable = true,
        ignore = false,
	},
})

require("nvim-web-devicons").setup({
	default = true,
})

vim.keymap.set('n', '<C-h>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
