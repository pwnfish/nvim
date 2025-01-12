return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		preset = "helix",
		win = {
			padding = { 1, 2 },
		},
		icons = {
			breadcrumb = "->",
			separator = "->",
			mappings = false,
		},
		spec = {
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>o", group = "[O]pen" },
			{ "<leader>b", group = "[B]uffer" },
		},
	},
}
