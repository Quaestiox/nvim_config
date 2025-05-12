local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "kyazdani42/nvim-tree.lua",      event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.8" },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup({
                -- Your config here
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    { "akinsho/toggleterm.nvim", version = "*", config = true },
    {
        "nvim-lualine/lualine.nvim",
        --        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            -- LSP 补全源
            "hrsh7th/cmp-nvim-lsp",
            -- buffer 补全源
            "hrsh7th/cmp-buffer",
            -- path 补全源
            "hrsh7th/cmp-path",
            -- cmdline 补全源
            "hrsh7th/cmp-cmdline",
            -- Snippet 插件
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- 代码片段集合
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "stevearc/conform.nvim",
        opts = {},
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false,

        -- For blink.cmp's completion
        -- source
        -- dependencies = {
        --     "saghen/blink.cmp"
        -- },
    },
    { 'godlygeek/tabular' },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<C-xx>",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)",
            },
        },
    }
})
