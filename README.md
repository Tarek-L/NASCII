
<div align="center">

## ⇁  NEOVIM CONFIG

Modular, fast, extensible and ASCII.
Focused on beinf fast and ugly.
For someone who can use the computer.

[![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=for-the-badge\&logo=neovim)](https://neovim.io)
[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge\&logo=lua)](https://www.lua.org)

<img width="1365" height="767" alt="2025-11-28_09-42" src="https://github.com/user-attachments/assets/57863d49-a8b2-4934-884b-9fda3be21770" />

<img width="1365" height="767" alt="2025-11-28_09-44" src="https://github.com/user-attachments/assets/645d1f51-12fd-4737-958c-b827ab64eaf3" />

<img width="1365" height="767" alt="2025-11-28_09-45" src="https://github.com/user-attachments/assets/7222e27c-6e1d-4053-9777-4b9678d042ab" />

<img width="1365" height="767" alt="2025-11-28_09-46" src="https://github.com/user-attachments/assets/cf135a2f-04f6-49a6-9459-605f3b915881" />

<img width="1365" height="767" alt="2025-11-28_09-45_1" src="https://github.com/user-attachments/assets/5f7808d3-9024-4cd4-9db6-adfb69de9466" />

</div>

---

## ⇁  Structure

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── main.lua
    ├── core/
    │   ├── opts.lua
    │   ├── keymaps.lua
    │   ├── lsp.lua
    └── plugins/
        ├── alpha.lua
        ├── autopairs.lua
        ├── cmp.lua
        ├── colorizer.lua
        ├── colors.lua
        ├── conform.lua
        ├── devicons.lua
        ├── indentline.lua
        ├── lsp.lua
        ├── luasnip.lua
        ├── oil.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── venn.lua
        └── zen.lua
```

---

## ⇁  Features

### Keymaps

    go read the /lua/core/keys.lua file for general keymaps.
    check files in /lua/plugins for plugin keymaps.

---

### LSP Integration

chatgpt wrote this part , it's looking good and helpful.

| Keybind     | Action              |
| ----------- | ------------------- |
| `gd`        | Go to definition    |
| `K`         | Hover info          |
| `<space>lf` | Format buffer       |
| `<space>la` | Code actions        |
| `<space>lr` | Rename symbol       |
| `<space>ld` | Show diagnostics    |
| `<space>ln` | Next diagnostic     |
| `<space>lp` | Previous diagnostic |

LSP setup is managed via `mason.nvim`.

---

### Zen Mode

| Keybind    | Action                          |
| ---------- | ------------------------------- |
| `<space>z` | Toggle distraction-free writing |

Uses `folke/zen-mode.nvim` to enter writing mode.

---

## ⇁  Installing LSPs

Add servers to the `ensure_installed` array in your `lsp.lua`:

```lua
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "etc ...",
    -- add more here
  },
})
```

Then run `:Mason` to install.

---

## ⇁  Requirements

* Neovim 0.9+
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [mason.nvim](https://github.com/williamboman/mason.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
* and others for other plugins you can see them in the plugins files just get lazy and it will do the job for you.

---

## ⇁  Philosophy

* Clean.
* Fast.
* Easy.

---

## ⇁  Notes

* Mappings are written in vanilla Lua, no external remapping libraries used.
* Add personal snippets in the snippets dir.
* Add plugins in the plugins dir.
* Add keymaps in the key.lua and options in opts.lua.


---

GO do something usefull.

