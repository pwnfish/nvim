return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		icons = {
			mappings = false,
		},
		spec = {
			{ "<leader>s", group = "[S]earch" },
		},
	},
}
