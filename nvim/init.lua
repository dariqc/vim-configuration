require('config.options')
require('config.keybindings')
require('config.lazy')

-- Create an autocommand to trim whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true }),
    pattern = "*",
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd([[%s/\s\+$//e]]) -- Remove trailing whitespace
        vim.fn.winrestview(view) -- Restore the cursor position and view
    end,
})
