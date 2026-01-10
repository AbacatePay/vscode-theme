local M = {}

M.palette = {
	bg = "#F1F1F0",
	fg = "#3F4E4F",
	green = "#4C7A2E",
	light_green = "#6A994E",
	olive = "#556B2F",
	yellow = "#B58900",
	function_brown = "#A0522D",
	teal = "#2F4F4F",
	gray = "#708090",
	selection = "#E5E5E1",
	seed_brown = "#8B4513",
	error = "#B22222",
	warn = "#B8860B",
	info = "#006400",
}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.o.background = "light"
	vim.g.colors_name = "abacatepay-theme-light"

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = "#F0F0EF" })
	h("Identifier", { fg = M.palette.fg })

	h("Keyword", { fg = M.palette.olive })
	h("StorageClass", { fg = M.palette.olive })
	h("@keyword.function", { fg = M.palette.olive })
	h("@module", { fg = M.palette.olive })
	h("PreProc", { fg = M.palette.olive })

	h("Conditional", { fg = M.palette.green, bold = true })
	h("Repeat", { fg = M.palette.green, bold = true })
	h("@keyword.control", { fg = M.palette.green, bold = true })
	h("@keyword.return", { fg = M.palette.green, bold = true })

	h("Function", { fg = M.palette.function_brown })
	h("@function", { fg = M.palette.function_brown })
	h("@function.call", { fg = M.palette.function_brown })

	h("Type", { fg = M.palette.yellow })
	h("@type", { fg = M.palette.yellow })
	h("String", { fg = M.palette.seed_brown })
	h("@string", { fg = M.palette.seed_brown })
	h("Number", { fg = M.palette.teal })
	h("Boolean", { fg = M.palette.teal })

	h("Comment", { fg = M.palette.gray, italic = true })
	h("Operator", { fg = M.palette.green })

	h("LineNr", { fg = "#BDC3C7" })
	h("CursorLineNr", { fg = M.palette.green, bold = true })
	h("Visual", { bg = M.palette.selection })
	h("CursorLine", { bg = "#F0F0EF" })
	h("Search", { bg = "#FFE4B5", fg = M.palette.fg })
end

return M
