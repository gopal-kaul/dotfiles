-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
	},
	{
		    "aserowy/tmux.nvim",
	},
	{
		"andweeb/presence.nvim"
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
		"nvim-tree/nvim-web-devicons",
		}
	},
}
