-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "ayu_dark",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

HEADER = {
	"      ██╗  ██╗███████╗██╗     ██╗      ██████╗        ",
	"      ██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ",
	"      ███████║█████╗  ██║     ██║     ██║   ██║       ",
	"      ██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ",
	"      ██║  ██║███████╗███████╗███████╗╚██████╔╝       ",
	"      ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝        ",
	"                                                      ",
	"      ██╗    ██╗ ██████╗ ██████╗ ██╗     ██████╗      ",
	"      ██║    ██║██╔═══██╗██╔══██╗██║     ██╔══██╗     ",
	"      ██║ █╗ ██║██║   ██║██████╔╝██║     ██║  ██║     ",
	"      ██║███╗██║██║   ██║██╔══██╗██║     ██║  ██║     ",
	"      ╚███╔███╔╝╚██████╔╝██║  ██║███████╗██████╔╝     ",
	"       ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝      ",
	"                                                      ",
	"                  ¯\\_(ツ)_/¯                         ",
}

BUTTONS = {
	{ txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
	{ txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
	{ txt = "  Find Word", keys = "fw", cmd = "Telescope live_grep" },
	{ txt = "  Bookmarks", keys = "ma", cmd = "Telescope marks" },
	{ txt = "  Themes", keys = "th", cmd = "Telescope themes" },
	{ txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
	{ txt = "  Settings", keys = "se", cmd = "e $MYVIMRC" },
	{ txt = "  Quit", keys = "q", cmd = "qa" },
}

M.nvdash = { load_on_startup = true, header = HEADER, buttons = BUTTONS }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

return M
