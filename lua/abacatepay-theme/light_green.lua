local M = {}

M.palette = {
	bg = "#D4E1D4",
	fg = "#3F4E4F",
	green = "#4C7A2E",
	light_green = "#6A994E",
	olive = "#556B2F",
	yellow = "#B58900",
	function_brown = "#A0522D",
	teal = "#168278",
	gray = "#708090",
	selection = "#C4D6C4",
	seed_brown = "#6F4E37",
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
	vim.g.colors_name = "abacatepay-theme-light-green"

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = "#C9D9C9" })
	h("Identifier", { fg = M.palette.fg })
	h("@variable", { fg = M.palette.fg })
	h("@variable.parameter", { fg = M.palette.fg })
	h("@variable.member", { fg = M.palette.fg })
	h("@variable.property", { fg = M.palette.fg })

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

	h("Type", { fg = M.palette.teal })
	h("@type", { fg = M.palette.teal })
	h("String", { fg = M.palette.seed_brown })
	h("@string", { fg = M.palette.seed_brown })
	h("Constant", { fg = M.palette.yellow })
	h("@constant", { fg = M.palette.yellow })
	h("@constant.builtin", { fg = M.palette.yellow })
	h("@constant.macro", { fg = M.palette.yellow })
	h("@variable.constant", { fg = M.palette.yellow })
	h("@lsp.type.enumMember", { fg = M.palette.yellow })
	h("@lsp.type.variable.readonly", { fg = M.palette.yellow })
	h("@lsp.typemod.variable.readonly", { fg = M.palette.yellow })
	h("@lsp.typemod.variable.static", { fg = M.palette.yellow })
	h("Number", { fg = M.palette.green })
	h("Boolean", { fg = M.palette.green })

	h("Comment", { fg = M.palette.gray, italic = true })
	h("Operator", { fg = M.palette.green })

	h("LineNr", { fg = "#AAB5AA" })
	h("CursorLineNr", { fg = M.palette.green, bold = true })
	h("Visual", { bg = M.palette.selection })
	h("CursorLine", { bg = "#C9D9C9" })
	h("Search", { bg = "#FFE4B5", fg = M.palette.fg })

	h("Special", { fg = M.palette.seed_brown })
	h("Underlined", { fg = M.palette.seed_brown, underline = true })
	h("MatchParen", { bg = M.palette.selection, fg = M.palette.yellow, bold = true })
	h("WildMenu", { bg = M.palette.selection, fg = M.palette.fg })
	h("Pmenu", { bg = "#C9D9C9", fg = M.palette.fg })
	h("PmenuSel", { bg = M.palette.selection, fg = M.palette.fg })
	h("PmenuThumb", { bg = M.palette.gray })

	h("@punctuation.bracket", { fg = M.palette.fg })
	h("@punctuation.delimiter", { fg = M.palette.fg })
	h("Delimiter", { fg = M.palette.fg })

	h("CmpItemKindFolder", { fg = M.palette.light_green })
	h("CmpItemKindFile", { fg = M.palette.fg })

	h("Directory", { fg = M.palette.light_green })
	h("MoreMsg", { fg = M.palette.seed_brown })
	h("Question", { fg = M.palette.seed_brown })
	h("Title", { fg = M.palette.seed_brown })
	h("MsgArea", { fg = M.palette.fg })
	h("ModeMsg", { fg = M.palette.seed_brown })

	h("AlphaHeader", { fg = M.palette.green })
	h("AlphaButtons", { fg = M.palette.green })
	h("AlphaShortcut", { fg = M.palette.yellow })
	h("DashboardHeader", { fg = M.palette.green })
	h("DashboardCenter", { fg = M.palette.green })
	h("DashboardShortcut", { fg = M.palette.yellow })
	h("DashboardFooter", { fg = M.palette.olive })

	h("SnacksDashboardHeader", { fg = M.palette.green })
	h("SnacksDashboardIcon", { fg = M.palette.green })
	h("SnacksDashboardKey", { fg = M.palette.yellow })
	h("SnacksDashboardDesc", { fg = M.palette.green })
	h("SnacksDashboardDir", { fg = M.palette.light_green })
	h("SnacksDashboardFile", { fg = M.palette.fg })
	h("SnacksDashboardSpecial", { fg = M.palette.green })

	h("Label", { fg = M.palette.green })
	h("SpecialKey", { fg = M.palette.green })

	h("htmlTag", { fg = M.palette.green })
	h("htmlTagName", { fg = M.palette.green })
	h("htmlArg", { fg = M.palette.olive })
	h("htmlEndTag", { fg = M.palette.green })
	h("htmlString", { fg = M.palette.seed_brown })
	h("@tag", { fg = M.palette.yellow })
	h("@tag.builtin", { fg = M.palette.green })
	h("@tag.attribute", { fg = M.palette.olive })
	h("@tag.delimiter", { fg = M.palette.gray })
	h("@constructor", { fg = M.palette.yellow })
	h("@property", { fg = M.palette.olive })
	h("@variable.member", { fg = M.palette.olive })
	h("@punctuation.definition.string.begin.html", { fg = M.palette.seed_brown })
	h("@punctuation.definition.string.end.html", { fg = M.palette.seed_brown })

	h("jsonKeyword", { fg = M.palette.yellow })
	h("jsonQuote", { fg = M.palette.yellow })
	h("jsonKey", { fg = M.palette.yellow })
	h("@property.json", { fg = M.palette.yellow })
	h("@label.json", { fg = M.palette.yellow })
	h("@string.special.symbol.json", { fg = M.palette.yellow })

	h("@lsp.type.class", { fg = M.palette.teal })
	h("@lsp.type.interface", { fg = M.palette.teal })
	h("@lsp.type.type", { fg = M.palette.teal })
	h("@lsp.typemod.type.defaultLibrary", { fg = M.palette.olive })
	h("@lsp.typemod.class.defaultLibrary", { fg = M.palette.olive })
	h("@lsp.typemod.variable.defaultLibrary", { fg = M.palette.olive })
	h("@type.builtin", { fg = M.palette.olive })
	h("@lsp.type.parameter", { fg = M.palette.light_green })
	h("@lsp.type.property", { fg = M.palette.olive })
	h("@lsp.type.enumMember", { fg = M.palette.olive })
	h("@lsp.type.function", { fg = M.palette.function_brown })
	h("@lsp.type.method", { fg = M.palette.function_brown })
	h("@lsp.type.variable", { fg = M.palette.light_green })
	h("@lsp.type.keyword", { fg = M.palette.olive })

	h("markdownHeadingDelimiter", { fg = M.palette.green, bold = true })
	h("markdownCode", { fg = M.palette.yellow })
	h("markdownCodeBlock", { fg = M.palette.yellow })
	h("markdownH1", { fg = M.palette.light_green, bold = true })
	h("markdownH2", { fg = M.palette.function_brown, bold = true })
	h("markdownH3", { fg = M.palette.green, bold = true })
	h("markdownH4", { fg = M.palette.olive, bold = true })
	h("markdownH5", { fg = M.palette.yellow, bold = true })
	h("markdownH6", { fg = M.palette.gray, bold = true })
	h("markdownLinkText", { fg = M.palette.light_green })
	h("markdownUrl", { fg = M.palette.light_green, underline = true })
	h("@markup.heading", { fg = M.palette.green, bold = true })
	h("@markup.heading.1", { fg = M.palette.light_green, bold = true })
	h("@markup.heading.2", { fg = M.palette.function_brown, bold = true })
	h("@markup.heading.3", { fg = M.palette.green, bold = true })
	h("@markup.heading.4", { fg = M.palette.olive, bold = true })
	h("@markup.heading.5", { fg = M.palette.yellow, bold = true })
	h("@markup.heading.6", { fg = M.palette.gray, bold = true })
	h("@markup.list", { fg = M.palette.green })
	h("@markup.link", { fg = M.palette.light_green })
	h("@markup.link.label", { fg = M.palette.yellow })
	h("@markup.link.url", { fg = M.palette.light_green, underline = true })
	h("@markup.raw", { fg = M.palette.yellow })
	h("@markup.italic", { fg = M.palette.olive, italic = true })
	h("@markup.emphasis", { fg = M.palette.olive, italic = true })
	h("markdownItalic", { fg = M.palette.olive, italic = true })
	h("markdownItalicDelimiter", { fg = M.palette.olive, italic = true })
	h("@markup.strong", { fg = M.palette.light_green, bold = true })
	h("markdownBold", { fg = M.palette.light_green, bold = true })

	if package.loaded["lualine"] then
		require("lualine").setup({ options = { theme = "abacatepay-theme-light-green" } })
	end
end

return M
