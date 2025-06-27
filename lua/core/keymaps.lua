local opts = {
	noremap = true,
	silent = true,
}

-- Nvim Tree Toggle
-- map("n", "<C-n>", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

vim.keymap.set("n", "<A-Up>", ":m -2<CR>", opts)
vim.keymap.set("n", "<A-Down>", ":m +1<CR>", opts)

vim.keymap.set("n", "<A-u>", ":m -2<CR>", opts)
vim.keymap.set("n", "<A-d>", ":m +1<CR>", opts)

