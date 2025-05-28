local diag = require("diag-cmd")
diag.setup({
	show_config = {
		virtual_text = false,
        virtual_line = false,
		signs = true,
		underline = true,
		update_in_insert = false,
	},
	disabled_file_type = { "lua", "php" },
	float = {
		scope = "line",
		border = "rounded",
		source = "always",
		focusable = false,
		header = "💡",
		jump = true,
	},
})
