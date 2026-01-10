local M = {}

M.palette = {
	bg = "#101213",
	fg = "#ECF0F1",
	green = "#C6EF9D",
	light_green = "#D9F2C7",
	olive = "#7A916E",
	yellow = "#FAF4C8",
	function_brown = "#D4A373",
	function_brown_2 = "#8B5A2B",
	teal = "#3D5F61",
	gray = "#94A3B8",
	selection = "#263238",
	seed_brown = "#BFA58A",
	error = "#E67E22",
	warn = "#F1E48E",
	info = "#C6EF9D",
	hint = "#94A3B8",
}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "abacatepay-theme" -- Kept generic for init.lua

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = "#161819" })
	h("Identifier", { fg = M.palette.light_green })

	h("Keyword", { fg = M.palette.olive })
	h("StorageClass", { fg = M.palette.olive })
	h("Structure", { fg = M.palette.olive })
	h("PreProc", { fg = M.palette.olive })
	h("Include", { fg = M.palette.olive })
	h("@keyword", { fg = M.palette.olive })
	h("@keyword.function", { fg = M.palette.olive })
	h("@module", { fg = M.palette.olive })

	h("Conditional", { fg = M.palette.green, bold = true })
	h("Repeat", { fg = M.palette.green, bold = true })
	h("Statement", { fg = M.palette.green, bold = true })
	h("@keyword.control", { fg = M.palette.green, bold = true })
	h("@keyword.return", { fg = M.palette.green, bold = true })

	h("Function", { fg = M.palette.function_brown })
	h("@function", { fg = M.palette.function_brown })
	h("@method", { fg = M.palette.function_brown })
	h("@function.call", { fg = M.palette.function_brown })
	h("@method.call", { fg = M.palette.function_brown })

	h("Type", { fg = M.palette.yellow })
	h("@type", { fg = M.palette.yellow })
	h("String", { fg = M.palette.seed_brown })
	h("@string", { fg = M.palette.seed_brown })
	h("Constant", { fg = M.palette.olive })
	h("Number", { fg = M.palette.olive })
	h("Boolean", { fg = M.palette.olive })
	h("@variable", { fg = M.palette.light_green })

	h("DiagnosticError", { fg = M.palette.error })
	h("DiagnosticWarn", { fg = M.palette.warn })
	h("DiagnosticInfo", { fg = M.palette.info })
	h("DiagnosticHint", { fg = M.palette.hint })
	h("DiagnosticUnderlineError", { undercurl = true, sp = M.palette.error })

	h("GitSignsAdd", { fg = M.palette.green })
	h("GitSignsChange", { fg = M.palette.yellow })
	h("GitSignsDelete", { fg = M.palette.error })

	h("LineNr", { fg = "#2C3133" })
	h("CursorLineNr", { fg = M.palette.green, bold = true })
	h("Visual", { bg = M.palette.selection })
	h("CursorLine", { bg = "#161819" })
	h("StatusLine", { fg = M.palette.fg, bg = "#161819" })
	h("StatusLineNC", { fg = M.palette.gray, bg = M.palette.bg })
	h("VertSplit", { fg = "#1B1B22" })

	h("TelescopeBorder", { fg = "#1B1B22", bg = M.palette.bg })
	h("TelescopeNormal", { bg = M.palette.bg })
	h("TelescopeSelection", { bg = M.palette.selection })

	h("CmpItemAbbrMatch", { fg = M.palette.green, bold = true })
	h("CmpItemKindFunction", { fg = M.palette.function_brown_2 })
	h("CmpItemKindKeyword", { fg = M.palette.green })
	h("CmpItemKindFolder", { fg = M.palette.seed_brown })
	h("CmpItemKindFile", { fg = M.palette.fg })

	h("Special", { fg = M.palette.seed_brown })
	h("Underlined", { fg = M.palette.seed_brown, underline = true })
	h("MatchParen", { bg = M.palette.selection, fg = M.palette.yellow, bold = true })
	h("WildMenu", { bg = M.palette.selection, fg = M.palette.fg })
	h("Pmenu", { bg = "#161819", fg = M.palette.fg })
	h("PmenuSel", { bg = M.palette.selection, fg = M.palette.fg })
	h("PmenuThumb", { bg = M.palette.gray })

	h("Directory", { fg = M.palette.seed_brown })
	h("MoreMsg", { fg = M.palette.seed_brown })
	h("Question", { fg = M.palette.seed_brown })
	h("Title", { fg = M.palette.seed_brown })
	h("MsgArea", { fg = M.palette.fg })
	h("ModeMsg", { fg = M.palette.seed_brown })

	-- Punctuation / Brackets
	h("@punctuation.bracket", { fg = M.palette.fg })
	h("@punctuation.delimiter", { fg = M.palette.fg })
	h("Delimiter", { fg = M.palette.fg })
	h("@tag.delimiter", { fg = M.palette.fg })

	-- Dashboard / Alpha
	h("AlphaHeader", { fg = M.palette.green })
	h("AlphaButtons", { fg = M.palette.green })
	h("AlphaShortcut", { fg = M.palette.orange or M.palette.yellow })
	h("DashboardHeader", { fg = M.palette.green })
	h("DashboardCenter", { fg = M.palette.green })
	h("DashboardShortcut", { fg = M.palette.yellow })
	h("DashboardFooter", { fg = M.palette.olive })

	h("SnacksDashboardHeader", { fg = M.palette.green })
	h("SnacksDashboardIcon", { fg = M.palette.green })
	h("SnacksDashboardKey", { fg = M.palette.yellow })
	h("SnacksDashboardDesc", { fg = M.palette.green })
	h("SnacksDashboardDir", { fg = M.palette.seed_brown })
	h("SnacksDashboardFile", { fg = M.palette.fg })
	h("SnacksDashboardSpecial", { fg = M.palette.green })

	h("Label", { fg = M.palette.green })
	h("SpecialKey", { fg = M.palette.green })

	if package.loaded["lualine"] then
		require("lualine").setup({ options = { theme = "abacatepay-theme" } })
	end
end

return M