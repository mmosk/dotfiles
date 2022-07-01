local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = { "javascript", "markdown", "pug" },
    highlight = {
        enable = true
    }
}

