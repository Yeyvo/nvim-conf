return {
	-- When enabled, will watch the `.git/` directory for changes and refresh the status buffer in response to filesystem
	-- events.
	filewatcher = {
		interval = 1000,
		enabled = true,
	},
	graph_style = "unicode",
	-- Used to generate URL's for branch popup action "pull request".
	git_services = {
		["github.com"] = "https://github.com/${owner}/${repository}/compare/${branch_name}?expand=1",
		["bitbucket.org"] = "https://bitbucket.org/${owner}/${repository}/pull-requests/new?source=${branch_name}&t=1",
		["gitlab.com"] = "https://gitlab.com/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
		["azure.com"] = "https://dev.azure.com/${owner}/_git/${repository}/pullrequestcreate?sourceRef=${branch_name}&targetRef=${target}",
	},
	-- Configure highlight group features
	highlight = {
		italic = true,
		bold = true,
		underline = true,
	},
	-- Set to false if you want to be responsible for creating _ALL_ keymappings
	use_default_keymaps = true,

	--Value used for `--sort` option for `git branch` command
	-- By default, branches will be sorted by commit date descending
	-- Flag description: https://git-scm.com/docs/git-branch#Documentation/git-branch.txt---sortltkeygt
	-- Sorting keys: https://git-scm.com/docs/git-for-each-ref#_options
	sort_branches = "-committerdate",
	-- Default for new branch name prompts
	initial_branch_name = "main",

	-- Change the default way of opening neogit
	kind = "floating",

	-- The time after which an output console is shown for slow running commands
	console_timeout = 2000,
	-- Automatically show console if a command takes more than console_timeout milliseconds
	auto_show_console = true,
}
