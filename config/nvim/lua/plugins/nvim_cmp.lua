return {
	{
		"hrsh7th/nvim-cmp",
		version = false,
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			{ "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
		},
		opts = function(_, opts)
			local cmp = require("cmp")

			return {
				completion = {
					completeopt = "menu,menuone,noinsert,noselect",
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					["<S-CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = false,
					}),
				}),
				sources = cmp.config.sources({
					{
						name = "nvim_lsp",
						entry_filter = function(entry)
							return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
						end,
					},
					{ name = "path" },
				}),
				formatting = {
					format = function(entry, item)
						local format_kinds = opts.formatting.format
						format_kinds(entry, item)
						return require("tailwindcss-colorizer-cmp").formatter(entry, item)
					end,
					enabled = function()
						local in_prompt = vim.api.nvim_buf_get_option(0, "buftype") == "prompt"
						if in_prompt then
							return false
						end
						local context = require("cmp.config.context")
						return not (
							context.in_treesitter_capture("comment") == true or context.in_syntax_group("Comment")
						)
					end,
				},
				experimental = {
					ghost_text = false,
				},
			}
		end,
	},
}
