local presets = require("markview.presets")

require("markview").setup({
	markdown = {
		headings = presets.headings.slanted,
	},

    experimental = {
        check_rtp_message = false,  
    }
})
