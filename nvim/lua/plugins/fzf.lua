return {
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = "FzfLua",
        keys = {
            { "<leader>ff", "<cmd>FzfLua files<cr>",      desc = "Find files" },
            { "<leader>fg", "<cmd>FzfLua live_grep<cr>",  desc = "Live grep" },
            { "<leader>fo", "<cmd>FzfLua oldfiles<cr>",   desc = "Recent files" },
            { "<leader>fb", "<cmd>FzfLua buffers<cr>",    desc = "Buffers" },
            { "<leader>fh", "<cmd>FzfLua helptags<cr>",   desc = "Help tags" },
            { "<leader>fs", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
            { "<leader>fr", "<cmd>FzfLua resume<cr>",     desc = "Resume last search" },
            { "<leader>fi", function() require("fzf-lua").files({ cwd = "~/.config/nvim" }) end, desc = "Find nvim config files" },
        },
        opts = {}
    }
}
