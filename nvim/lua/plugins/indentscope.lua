return {
    {
        "nvim-mini/mini.indentscope",
        version = "*",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            -- mini modules need an explicit setup() now that LazyVim no longer
            -- calls it for us.
            require("mini.indentscope").setup()
        end,
    },
}
