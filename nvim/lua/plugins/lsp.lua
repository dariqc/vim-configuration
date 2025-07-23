return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require("lspconfig").pyright.setup {
                settings = {
                    python = {
                        analysis = {
                            extraPaths = { ".." },
                            autoSearchPaths = true,
                            diagnoticMode = "workspace",
                            useLibraryCodeForTypes = true
                        }
                    }
                }
            }
        end
    },
}
