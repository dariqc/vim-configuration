return {
    {
        "romus204/referencer.nvim",
        event = "LspAttach",
        config = function()
            -- Shows reference counts as virtual text. Starts disabled; toggle
            -- with :ReferencerToggle, refresh current buffer with :ReferencerUpdate.
            require("referencer").setup({
                enable = false,
                format = "  %d reference(s)",
                hl_group = "Comment",
                virt_text_pos = "eol",
            })
        end,
    },
}
