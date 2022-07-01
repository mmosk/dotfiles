local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	ensure_installed = { "javascript", "markdown" },
	highlight = {
		enable = true,
	},
})
