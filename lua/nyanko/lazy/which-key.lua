return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		icons = {
			separator = "->",
			mappings = false,
		},
		spec = {
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>o", group = "[O]pen" },
		},
	},
}
