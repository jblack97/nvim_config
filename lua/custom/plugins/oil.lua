return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			columns = { "icon" },
			keymaps = {
				["<C-p>"] = false,
				["<C-i>"] = "actions.preview",
			},
			default_file_explorer = false,
		})
	end,
}
