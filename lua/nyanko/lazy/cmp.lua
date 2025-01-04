return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			build = (function()
				-- build step is needed for regex support
				-- this fails on windows a lot of the time
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end

				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
		},
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		luasnip.config.setup({})

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			completion = {
				completeopt = "menu,menuone,noinsert",
			},

			mapping = cmp.mapping.preset.insert({
				-- select the [n]ext item
				["<C-n>"] = cmp.mapping.select_next_item(),
				-- select the [p]revious item
				["<C-p>"] = cmp.mapping.select_prev_item(),

				-- scroll the documentation window [b]ack or [f]orward
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),

				-- accept ([y]es) the completion
				["<C-y>"] = cmp.mapping.confirm({ select = true }),

				-- manually trigger a completion from nvim-cmp
				-- you shouldn't need this, nvim-cmp will display completions
				-- whenever it has options available
				["<C-space>"] = cmp.mapping.complete({}),

				-- move forward or backward through the snippet expansion
				["<C-l>"] = cmp.mapping(function()
					if luasnip.expand_or_locally_jumpable() then
						luasnip.expand_or_jump()
					end
				end, { "i", "s" }),
				["<C-h>"] = cmp.mapping(function()
					if luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					end
				end, { "i", "s" }),
			}),
			sources = {
				{
					name = "lazydev",
					group_index = 0,
				},
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
			},
		})
	end,
}
