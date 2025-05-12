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

vim.diagnostic.config({
    virtual_text = false,     -- 关闭行内错误文本
    signs = false,            -- 关闭行号左侧图标
    underline = false,        -- 关闭错误下划线
    update_in_insert = false, -- 输入时不更新诊断
})
