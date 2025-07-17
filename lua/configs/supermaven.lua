return {
	keymaps = {
		accept_suggestion = "<Tab>",
		clear_suggestion = "<leader>ac",
		accept_word = "<leader>aa",
	},

	ignore_filetypes = {
		-- Files that might contain secrets
		"yaml",
		"yml",
		"json",
		"toml",
		"ini",
		"conf",
		"config",
		-- Environment and secret files
		"env",
		"envrc",
		"secret",
		"key",
		"pem",
		"crt",
		-- Database and migration files
		"sql",
		"migration",
		-- Documentation that might contain sensitive info
		"md",
		"txt",
		"rst",
	},
	-- will also ignore the files in .gitignore
	condition = function()
		local filename = vim.fn.expand "%:t"
		local filepath = vim.fn.expand "%:p"

		-- Disable for files with sensitive patterns
		local sensitive_patterns = {
			"%.env.*", -- .env files
			"%.secret.*", -- secret files
			"config.*", -- config files
			"%.key$", -- key files
			"%.pem$", -- certificate files
			"password", -- files with password in name
			"credentials", -- credential files
			"%.sql$", -- SQL files
			"docker%-compose", -- docker-compose files
		}

		for _, pattern in ipairs(sensitive_patterns) do
			if string.match(filename, pattern) then
				return true -- disable supermaven
			end
		end

		-- Disable for sensitive directories
		local sensitive_dirs = {
			"%.git/",
			"%.ssh/",
			"/etc/",
			"secrets/",
			"private/",
			"credentials/",
		}

		for _, pattern in ipairs(sensitive_dirs) do
			if string.match(filepath, pattern) then
				return true -- disable supermaven
			end
		end

		return false -- enable supermaven
	end,

	color = {
		suggestion_color = "#4472c4",
		cterm = 244,
	},
	log_level = "info", -- set to "off" to disable logging completely
	-- :disable_inline_completion = false, -- disables inline completion for use with cmp
}
