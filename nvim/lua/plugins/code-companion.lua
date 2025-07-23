return {
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            strategies = {
                -- Change the default adapters 
                chat = {
                    adapter = "devstral"
                },
                inline = {
                    adapter = "devstral"
                },
                cmd = {
                    adapter = "devstral"
                },
            },
            adapters = {
                devstral = function()
                    return require("codecompanion.adapters").extend("ollama", {
                        name = "devstral",
                        schema = {
                            model = {
                                default = "devstral"
                            },
                        },
                    })
                end,
            },
        },
    },
}
