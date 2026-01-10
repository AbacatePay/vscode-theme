local M = {}

M.palette = {
	bg = "#101213",
	fg = "#ECF0F1",
	green = "#C6EF9D",
	light_green = "#D9F2C7",
	olive = "#7A916E",
	yellow = "#FAF4C8",
	teal = "#3D5F61",
	gray = "#94A3B8",
	selection = "#263238",
	seed_brown = "#BFA58A",
}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "abacatepay-theme"

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = "#161819" })
	h("Identifier", { fg = M.palette.light_green })

	h("Keyword", { fg = M.palette.olive, bold = true })
	h("StorageClass", { fg = M.palette.olive, bold = true })
	h("Structure", { fg = M.palette.olive, bold = true })
	h("PreProc", { fg = M.palette.olive })
	h("Include", { fg = M.palette.olive })
	h("@keyword", { fg = M.palette.olive, bold = true })
	h("@keyword.function", { fg = M.palette.olive, bold = true })
	h("@module", { fg = M.palette.olive })

	h("Conditional", { fg = M.palette.green, bold = true })
	h("Repeat", { fg = M.palette.green, bold = true })
	h("Statement", { fg = M.palette.green, bold = true })
	h("@keyword.control", { fg = M.palette.green, bold = true })
	h("@keyword.return", { fg = M.palette.green, bold = true })

	h("Function", { fg = M.palette.fg })
	h("@function", { fg = M.palette.fg })
	h("@method", { fg = M.palette.fg })
	h("@function.call", { fg = M.palette.fg })
	h("@method.call", { fg = M.palette.fg })

	h("Type", { fg = M.palette.yellow })
	h("@type", { fg = M.palette.yellow })
	h("String", { fg = M.palette.seed_brown })
	h("@string", { fg = M.palette.seed_brown })
	h("Constant", { fg = M.palette.olive })
	h("Number", { fg = M.palette.olive })
	h("Boolean", { fg = M.palette.olive })
	h("@variable", { fg = M.palette.light_green })

	h("Comment", { fg = M.palette.gray, italic = true })
	h("Operator", { fg = M.palette.green })
	h("Delimiter", { fg = M.palette.gray })

	h("LineNr", { fg = "#2C3133" })
	h("CursorLineNr", { fg = M.palette.green, bold = true })
	h("Visual", { bg = M.palette.selection })
	h("CursorLine", { bg = "#161819" })
end

return M

