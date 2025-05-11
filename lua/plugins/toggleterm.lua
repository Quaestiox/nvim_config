require("toggleterm").setup({
  -- size can be a number or function which is passed the current terminal
    size = 20,
    open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    hide_numbers = true, -- hide the number column in toggleterm buffers
    highlights = {
      -- highlights which map to a highlight group name and a table of it's values
      -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    },
    direction = 'float'
})
