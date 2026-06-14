-- KEYBINDS 
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- Remap joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keep cursor in place while moving up/down page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") -- center screen when looping search results
vim.keymap.set("n", "N", "Nzzzv")

-- paste and don't replace clipboard over deleted text
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


-- sometimes in insert mode, control-c doesn't exactly work like escape
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- What the heck is Ex mode?
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- yank into clipboard even if on ssh
-- NOTE: disabled - depends on vim-oscyank which is not installed.
-- vim.keymap.set('n', '<leader>y', '<Plug>OSCYankOperator')
-- vim.keymap.set('v', '<leader>y', '<Plug>OSCYankVisual')

-- reload without exiting vim
vim.keymap.set("n", "<leader>rl", "<cmd>source ~/.config/nvim/init.lua<cr>")

-- NOTE: disabled - depends on undotree which is not installed.
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- shortcut for diagnostic window --
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- NvimTree shortcuts
vim.keymap.set('n', '<leader>nf', '<Cmd>NvimTreeFindFile<CR>', { desc = 'Open current file in nvim tree' })

-- Shortcut for buffer
vim.keymap.set('n', '<leader>bb', '<Cmd>Bufferin<CR>', { desc = 'Pick a buffer' })

-- Shortcut for FzfLua
vim.keymap.set('n', '<leader>zg', '<Cmd>FzfLua live_grep<CR>', { desc = 'Open live grep in FzfLua' })
vim.keymap.set('n', '<leader>zf', '<Cmd>FzfLua files<CR>', { desc = 'Open files in FzfLua' })

-- source file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
