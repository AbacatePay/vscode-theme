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
	-- Diagnostics
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
	vim.g.colors_name = "abacatepay-theme-dark"

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
end

return M
