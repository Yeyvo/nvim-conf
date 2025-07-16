require "nvchad.options"

-- add yours here!

local o = vim.o


-- Editor
o.relativenumber = true
o.scrolloff = 8 -- keep 8 lines visible when scrolling
o.cursorlineopt ='both' -- to enable cursorline!

-- Clipboard
o.clipboard = "unamedplus" -- Use system clipboard

-- Identation
o.expandtab = false -- use Tabs for idents  
o.tabstop = 4 -- width of <Tab> character
o.shiftwidth = 4 -- size of ident (should match tabstop)
o.softtabstop = 4 -- Nbr of spaces tabs count for in editing (for consistency) 
o.autoindent = true -- Copy identation from current line
o.smartindent = true -- smart identation
