return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					auto_trigger = true,
					keymap = {
						accept = "<TAB>",
						accept_word = false,
						accept_line = false,
						dismiss = "<C-]>",
					},
				},
			})
		end,
	},
}
