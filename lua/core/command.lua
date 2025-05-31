vim.api.nvim_create_user_command("OpenConfig", function()
	vim.cmd("e " .. vim.fn.stdpath("config"))
end, {})






