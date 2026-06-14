return {
    {
        "hinell/lsp-timeout.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        init = function()
            -- Stop idle LSP servers when nvim loses focus to save memory,
            -- restart them shortly after it regains focus. Works zero-config;
            -- these are the defaults made explicit.
            vim.g.lspTimeoutConfig = {
                stopTimeout  = 1000 * 60 * 5, -- stop after 5 min unfocused
                startTimeout = 1000 * 10,     -- restart within 10s on refocus
                silent       = false,
            }
        end,
    },
}
