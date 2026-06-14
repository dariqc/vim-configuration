# vim-configuration

My personal [Neovim](https://neovim.io/) configuration, managed with
[lazy.nvim](https://github.com/folke/lazy.nvim). The live config lives in
`~/.config/nvim`; this repo mirrors it under `nvim/`.

## Install

```sh
git clone https://github.com/dariqc/vim-configuration.git
cp -r vim-configuration/nvim ~/.config/nvim
nvim   # lazy.nvim bootstraps itself and installs the plugins on first launch
```

LSP servers are installed automatically via [mason](https://github.com/mason-org/mason.nvim)
on first run.

## Layout

```
nvim/
├── init.lua                 # entrypoint: loads config modules + trim-whitespace autocmd
├── lazy-lock.json           # pinned plugin versions
├── lazyvim.json             # lazy.nvim ui state
└── lua/
    ├── config/
    │   ├── options.lua      # editor options (tabs, search, undo, diagnostics, ...)
    │   ├── keybindings.lua  # keymaps (leader = space)
    │   └── lazy.lua         # plugin manager bootstrap
    └── plugins/             # one file per plugin spec
```

## Plugins

| Plugin | What it does |
| --- | --- |
| [dracula.nvim](https://github.com/Mofiqul/dracula.nvim) | Colorscheme |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline (+ nvim-web-devicons) |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting / parsing |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder (files, live grep) |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file marks / navigation |
| [arena.nvim](https://github.com/dzfrias/arena.nvim) | Frecency-based buffer switcher |
| [bufferin.nvim](https://github.com/wasabeef/bufferin.nvim) | Buffer picker |
| [mason.nvim](https://github.com/mason-org/mason.nvim) + [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP install + config |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Completion |
| [lsp-timeout.nvim](https://github.com/hinell/lsp-timeout.nvim) | Stops idle LSP servers |
| [hlargs.nvim](https://github.com/m-demare/hlargs.nvim) | Highlights function arguments |
| [referencer.nvim](https://github.com/romus204/referencer.nvim) | LSP reference helper |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Toggle comments |
| [mini.indentscope](https://github.com/nvim-mini/mini.nvim) | Indent guides |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Integrated terminal |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration |
| [smm.nvim](https://github.com/iamt4nk/smm.nvim) | Spotify client (`:Spotify`) |

### LSP servers

Auto-installed on first run: `ruby_lsp` (Ruby/Rails), `pyright` (Python),
`ts_ls` (TypeScript/JavaScript/React), `jsonls`, `yamlls`, `marksman` (Markdown).

## Keybindings

Leader is `<Space>`.

| Key | Action |
| --- | --- |
| `<leader>cd` | Open netrw / file explorer (`:Ex`) |
| `<leader>zf` | Fzf files |
| `<leader>zg` | Fzf live grep |
| `<leader>nf` | Reveal current file in nvim-tree |
| `<leader>bb` | Pick a buffer (Bufferin) |
| `gl` | Open floating diagnostic |
| `J` / `K` (visual) | Move selected lines down / up |
| `<C-d>` / `<C-u>` | Half-page scroll, keep cursor centered |
| `n` / `N` | Center screen on search results |
| `<leader>p` | Paste without clobbering the clipboard |
| `<leader>d` | Delete to black-hole register |
| `<leader>x` | `chmod +x` the current file |
| `<leader>rl` | Reload `init.lua` |
| `<leader><leader>` | Source the current file |

See `nvim/lua/config/keybindings.lua` for the full list.
