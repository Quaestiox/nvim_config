require("toggleterm").setup({
	-- size can be a number or function which is passed the current terminal
	size = 20,
	open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
	hide_numbers = true, -- hide the number column in toggleterm buffers
	direction = "float",
	shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
})
