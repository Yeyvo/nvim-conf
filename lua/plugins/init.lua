return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	{
		"supermaven-inc/supermaven-nvim", -- TODO : change this Plugin due to pivacy issues with this plugin where reported
		lazy = false,
		opts = require "configs.supermaven",
	},

	{
		"numToStr/Comment.nvim",
		opts = require "configs.comment",
	},

	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	-- Better syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		opts = {
			ensure_installed = {
				-- Core languages
				"vim",
				"lua",
				"vimdoc",
				"query",

				-- Web development
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"yaml",
				"toml",
				"xml",

				-- Systems programming
				"c",
				"cpp",
				"rust",
				"go",

				-- Scripting
				"python",
				"bash",
				"powershell",

				-- Other popular languages
				"java",
				"kotlin",
				"php",
				"ruby",
				"sql",
				"graphql",

				-- Config/markup
				"markdown",
				"markdown_inline",
				"dockerfile",
				"gitignore",
				"gitcommit",
				"regex",
				"comment",

				-- Add more as needed
				"make",
				"cmake",
			},

			-- Automatically install missing parsers when entering buffer
			auto_install = true,

			-- Enable syntax highlighting
			highlight = {
				enable = true,
				-- Disable for very large files to prevent performance issues
				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 1000 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
				-- Don't use regex highlighting alongside tree-sitter
				additional_vim_regex_highlighting = false,
			},
		},
	},
	{
		"NeogitOrg/neogit",
		lazy = true,
		cmd = "Neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		opts = require "configs.neogit",
	},
}
