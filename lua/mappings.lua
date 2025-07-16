require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Custom

-- Familiar shortcuts from other editors
map("n", "<C-S-f>", function()
	require("conform").format { async = true, lsp_fallback = true }
end, { desc = "Format file" })

map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("n", "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("v", "<C-c>", '"+y', { desc = "Copy selection to clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from clipboard" })
map("v", "<C-v>", '"+p', { desc = "Paste from clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard in insert mode" })

-- Save file
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("i", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- Undo/Redo
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })

-- Duplicate line or selection
map("n", "<C-d>", "yyp", { desc = "Duplicate current line" })
map("v", "<C-d>", "y'>p", { desc = "Duplicate selection" })

-- LSP mappings
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "Show references" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
