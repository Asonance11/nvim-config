return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "base16",
				component_separators = "|",
				section_separators = "",
			},
		})
	end,
}
