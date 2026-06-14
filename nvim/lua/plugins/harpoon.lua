return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()

            vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end,
                { desc = "Harpoon: add file" })
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
                { desc = "Harpoon: toggle menu" })

            -- Jump to harpoon marks 1-4
            for i = 1, 4 do
                vim.keymap.set("n", "<leader>" .. i, function() harpoon:list():select(i) end,
                    { desc = "Harpoon: go to file " .. i })
            end

            -- Cycle through marks
            vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end,
                { desc = "Harpoon: previous mark" })
            vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end,
                { desc = "Harpoon: next mark" })
        end,
    },
}
