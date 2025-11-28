-- In core/opts.lua
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.encoding = "utf-8"
vim.opt.undofile = true
vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
vim.cmd.colorscheme("gruvbox8")

local function set_transparent_groups()
    local transparent_groups = {
        "Normal", "NormalNC", "NormalFloat", "FloatBorder",
        "StatusLine", "SignColumn", "VertSplit", "WinSeparator",
        "LineNr", "FoldColumn", "CursorLineNr", "TabLine",
        "TabLineFill", "TabLineSel", "Pmenu", "PmenuSel",
        "PmenuSbar", "PmenuThumb", "MsgArea",
    }

    for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
end

set_transparent_groups()
