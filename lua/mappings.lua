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
map("v", "<C-S-c>", "gcc", { desc = "Comment all lines" })

local opts = { noremap = true, silent = true }

-- Move current line or visual selection down
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-Down>", ":m .+1<CR>==", opts)

-- Move current line or visual selection up
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("n", "<A-Up>", ":m .-2<CR>==", opts)

-- Visual mode: move selected lines up/down and reselect
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Save file
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("i", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- Undo/Redo
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })

-- Duplicate line or selection ( conflict with scroll down)
map({ "n", "i" }, "<C-d>", "yyp", { desc = "Duplicate current line" })
-- map("i", "<C-d>", "yyp", { desc = "Duplicate current line" })
map("v", "<C-d>", "y'>p", { desc = "Duplicate selection" })

-- LSP mappings
map("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "<leader>cr", vim.lsp.buf.references, { desc = "Show references" })
map("n", "<leader>ci", vim.lsp.buf.hover, { desc = "Show hover information" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>cn", vim.lsp.buf.rename, { desc = "Rename symbol" })
