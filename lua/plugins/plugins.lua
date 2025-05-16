local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "kyazdani42/nvim-tree.lua", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8" },
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"nvim-lualine/lualine.nvim",
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
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"stevearc/conform.nvim",
		priority = 999,
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
	},
	{ "godlygeek/tabular" },
	{ "sindrets/diffview.nvim" },
	{ "rcarriga/nvim-notify", event = "VeryLazy" },
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
	},
	{ "everviolet/nvim" },
	{ "zapling/mason-conform.nvim", lazy = true },
})
