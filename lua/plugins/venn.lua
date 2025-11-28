return {
    "jbyuki/venn.nvim",
    lazy = false,
    config = function()
        -- function to toggle venn mode and virtualedit together
        function _G.Toggle_venn()
            local enabled = vim.b.venn_enabled
            if not enabled then
                vim.b.venn_enabled = true
                vim.opt.virtualedit = "all" -- enable virtualedit globally
                vim.opt_local.virtualedit = "all"

                -- mappings for drawing boxes
                vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true, silent = true })
                vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true, silent = true })
                vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true, silent = true })
                vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true, silent = true })
                vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true, silent = true })

                print("Venn mode enabled")
            else
                vim.b.venn_enabled = nil
                vim.opt.virtualedit = "" -- restore normal virtualedit behavior
                vim.opt_local.virtualedit = nil

                -- remove the venn keymaps
                vim.api.nvim_buf_del_keymap(0, "n", "J")
                vim.api.nvim_buf_del_keymap(0, "n", "K")
                vim.api.nvim_buf_del_keymap(0, "n", "L")
                vim.api.nvim_buf_del_keymap(0, "n", "H")
                vim.api.nvim_buf_del_keymap(0, "v", "f")
            end
        end

        -- toggle venn + virtualedit with <leader>v
        vim.keymap.set("n", "<leader>v", Toggle_venn, { noremap = true, silent = true, desc = "Toggle Venn mode" })
    end,
}
