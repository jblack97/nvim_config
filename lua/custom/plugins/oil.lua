return {
	"stevearc/oil.nvim",
	opts = {},
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
			keymaps = {
				["<C-p>"] = false,
				["<C-i>"] = "actions.preview",
				["<leader>cd"] = "actions.cd",
				["<leader>cwd"] = "actions.open_cwd",
			},
			default_file_explorer = true,
		})
	end,
}
