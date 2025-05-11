local opts = {
    noremap = true,      
    silent = true,      
}

-- Nvim Tree Toggle
-- map("n", "<C-n>", ":NvimTreeToggle<CR>", {}) 
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opt)