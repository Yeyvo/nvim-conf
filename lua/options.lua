require "nvchad.options"

-- add yours here!

local o = vim.o

-- Editor
o.relativenumber = true
o.scrolloff = 8 -- keep 8 lines visible when scrolling
o.cursorlineopt = "both" -- to enable cursorline!

-- Clipboard
o.clipboard = "unnamedplus" -- Use system clipboard

-- Identation
o.expandtab = false -- use Tabs for idents
o.tabstop = 4 -- width of <Tab> character
o.shiftwidth = 4 -- size of ident (should match tabstop)
o.softtabstop = 4 -- Nbr of spaces tabs count for in editing (for consistency)
o.autoindent = true -- Copy identation from current line
o.smartindent = true -- smart identation

-- Diagnostic
-- Better diagnostics
vim.diagnostic.config {
	virtual_text = {
		prefix = "●",
		source = "if_many",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = true,
		header = "",
		prefix = "",
	},
}

-- Diagnostic signs
local signs = {
	Error = " ",
	Warn = " ",
	Hint = " ",
	Info = " ",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
