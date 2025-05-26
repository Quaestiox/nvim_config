local diag = require("diag-cmd")
diag.setup({
	show_config = {
		virtual_text = false,
		signs = true,
		underline = true,
		update_in_insert = false,
	},
	disabled_file_type = { "lua", "php" },
})



