return {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
            show_hidden = true,
        },
        keymaps = {
            ["<CR>"] = "actions.select",
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-x>"] = "actions.select_split",
            ["-"] = "actions.parent",
            ["<leader>r"] = "actions.refresh",
        },
    },
    config = function(_, opts)
        require("oil").setup(opts)

        vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil Explorer" })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil",
            callback = function()
                vim.wo.winbar = " |-_-_-|[ FILE EXPLORER ]|-_-_-|"
                vim.keymap.set("n", "q", "<cmd>b#<CR>",
                    { buffer = true, desc = "Go back to last buffer" })
            end,
        })
    end,
}
