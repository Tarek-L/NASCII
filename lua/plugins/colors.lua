-- lua/plugins/themes.lua
local function set_common_highlights(fg, bg)
	local groups = {
		"LazyNormal", "LazyBorder", "LazyH1", "LazyReasonPlugin",
		"MasonNormal", "MasonBorder", "MasonH1", "NormalFloat"
	}

	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, { fg = fg, bg = bg, bold = group:find("H1") ~= nil })
	end

	-- Remove background from StatusLine
end


return {
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({ transparent = true })
			set_common_highlights("#FED072", "NONE")
		end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.moonflyTransparent = true
			set_common_highlights("#FFD866", "NONE")
		end,
	},
	{
		"lifepillar/vim-gruvbox8",
		name = "gruvbox8",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_italic = 1
			vim.g.gruvbox_transp_bg = 1
			set_common_highlights("#fabd2f", "NONE")
		end,
	},
}
