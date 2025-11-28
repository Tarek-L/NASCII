return {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("colorizer").setup(nil, {
            css = { rgb_fn = true, names = true },
            html = { rgb_fn = true, names = false },
            tailwind = {
                enable = true,
                -- Show squares (no rounding, no text)
                virtualtext = "■",
                -- Force same width, no padding
                foreground = false,
                background = true,
            },
            -- Fallback: simply highlight hex codes
            default = { rgb_fn = true, names = false },
        })
    end,
}
