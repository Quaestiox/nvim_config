require("mason-conform").setup({
	ensure_installed = {
--		"prettierd", -- JS/TS/CSS/HTML formatter
		"stylua", -- Lua formatter
--		"black", -- Python formatter
		"gofmt", -- Go formatter
		"rustfmt", --Rust formatter
		"clang-format", --C/C++ formatter
		"phpcbf", --PHP formatter
	},
	automatic_installation = true,
})
