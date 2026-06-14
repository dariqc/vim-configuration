return {
    {
        "m-demare/hlargs.nvim",
        -- Highlights function argument definitions/usages via treesitter.
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("hlargs").setup()
        end,
    },
}
