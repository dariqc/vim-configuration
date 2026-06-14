return {
    {
        "dzfrias/arena.nvim",
        -- Frecency-based buffer switcher. Toggle the window with :ArenaToggle.
        event = "BufWinEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = true,
        keys = {
            { "<leader>aa", "<cmd>ArenaToggle<cr>", desc = "Arena: toggle buffer switcher" },
        },
    },
}
