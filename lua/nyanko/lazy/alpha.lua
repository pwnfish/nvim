return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local theta = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")

		theta.header.val = {
			"   |\\      _,,,---,,_     ",
			"   /,`.-'`'    -.  ;-;;,_ ",
			"  |,4-  ) )-,_..;\\ (  `'-'",
			" '---''(_/--'  `-'\\_)     ",
		}

		theta.buttons.val = {
			{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
			{ type = "padding", val = 1 },
			dashboard.button("e", "New file", "<cmd>ene<CR>"),
			dashboard.button("<leader>ff", "Find file"),
			dashboard.button("<leader>fg", "Live grep"),
			dashboard.button("q", "Quit", "<cmd>qa<CR>"),
		}

		theta.file_icons.enabled = false

		require("alpha").setup(theta.config)
	end,
}
