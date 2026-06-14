return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                -- enable indentation
                indent = { enable = true },
                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },
                -- ensure these language parsers are installed
                ensure_installed = {
                    "json",
                    "jsonc",
                    "javascript",
                    "typescript",
                    "tsx",
                    "ruby",
                    "yaml",
                    "markdown",
                    "markdown_inline",
                    "query",
                    "bash",
                    "lua",
                    "vim",
                    "vimdoc",
                    "dockerfile",
                    "gitignore",
                    "python"
                },
                -- auto install above language parsers
                auto_install = false,
            })
        end,
    }
}

