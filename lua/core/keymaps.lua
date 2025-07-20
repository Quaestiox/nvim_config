local opts = {
	noremap = true,
	silent = true,
}

-- Nvim Tree Toggle
-- map("n", "<C-n>", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

vim.keymap.set("n", "<A-a>", ":m -2<CR>", opts)
vim.keymap.set("n", "<A-t>", ":m +1<CR>", opts)

vim.keymap.set("n", "<C-\\>", ":terminal<CR>", opts)

vim.keymap.set('n', '<C-j>', "<Plug>(VM-Add-Cursor-Down)", opts)
vim.keymap.set('n', '<C-k>', '<Plug>(VM-Add-Cursor-Up)', opts)
