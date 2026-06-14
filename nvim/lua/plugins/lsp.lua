-- LSP stack. Top priority: language servers for Ruby/Rails, Python,
-- TypeScript/React, JSON, YAML and Markdown must work out of the box.
--
-- Flow: mason installs the server binaries -> mason-lspconfig auto-enables
-- them via vim.lsp.enable() (nvim 0.11 API) -> nvim-lspconfig ships the
-- per-server defaults -> we attach completion capabilities + keymaps.
return {
    -- Installs LSP servers / formatters / linters
    {
        "mason-org/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },

    -- Bridges mason <-> lspconfig: installs the listed servers and
    -- auto-enables every installed server (automatic_enable defaults to true).
    {
        "mason-org/mason-lspconfig.nvim",
        lazy = false,
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ruby_lsp", -- Ruby + Rails (Rails support via the ruby-lsp-rails addon, project-side)
                    "pyright",  -- Python
                    "ts_ls",    -- TypeScript / JavaScript / React (TSX, JSX)
                    "jsonls",   -- JSON
                    "yamlls",   -- YAML
                    "marksman", -- Markdown
                },
                automatic_enable = true,
            })
        end,
    },

    -- nvim-lspconfig provides the server configs; here we wire completion
    -- capabilities into every server and set buffer-local LSP keymaps.
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = { "hrsh7th/cmp-nvim-lsp" },
        config = function()
            -- Advertise nvim-cmp's completion capabilities to all servers.
            local caps = vim.lsp.protocol.make_client_capabilities()
            local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
            if ok then
                caps = vim.tbl_deep_extend("force", caps, cmp_lsp.default_capabilities())
            end
            vim.lsp.config("*", { capabilities = caps })

            -- Buffer-local keymaps, applied when any server attaches.
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
                callback = function(ev)
                    local map = function(keys, fn, desc)
                        vim.keymap.set("n", keys, fn, { buffer = ev.buf, desc = "LSP: " .. desc })
                    end
                    map("gd", vim.lsp.buf.definition, "Goto definition")
                    map("gD", vim.lsp.buf.declaration, "Goto declaration")
                    map("gr", vim.lsp.buf.references, "List references")
                    map("gi", vim.lsp.buf.implementation, "Goto implementation")
                    map("K", vim.lsp.buf.hover, "Hover documentation")
                    map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
                    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
                    map("<leader>cf", function() vim.lsp.buf.format({ async = true }) end, "Format buffer")
                end,
            })
        end,
    },
}
