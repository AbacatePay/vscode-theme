local M = {}

M.palette = {
	bg = "#1A1612",
	bg_secondary = "#2A231E",
	fg = "#FFE5D0",
	accent = "#F4A261",
	accent_secondary = "#E76F51",
	selection = "#3D3228",
	border = "#3D3228",
	comment = "#8B8B8B",
	orange = "#F4A261",
	orange_dark = "#E07A5F",
	orange_light = "#FFD6A5",
	yellow = "#E9C46A",
	beige = "#D4A373",
	cream = "#FAF4C8",
	white = "#FFE5D0",
}

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "abacatepay-theme-dev"

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = M.palette.bg_secondary })
	h("Identifier", { fg = M.palette.white })
	h("@variable", { fg = M.palette.white })
	h("@variable.parameter", { fg = M.palette.white })
	h("@variable.member", { fg = M.palette.white })
	h("@variable.property", { fg = M.palette.white })

	h("Keyword", { fg = M.palette.orange_dark })
	h("StorageClass", { fg = M.palette.orange_dark })
	h("Structure", { fg = M.palette.orange_dark })
	h("PreProc", { fg = M.palette.orange_dark })
	h("Include", { fg = M.palette.orange_dark })
	h("@keyword", { fg = M.palette.orange_dark })
	h("@keyword.function", { fg = M.palette.orange_dark })
	h("@module", { fg = M.palette.orange_dark })

	h("Conditional", { fg = M.palette.accent, bold = true })
	h("Repeat", { fg = M.palette.accent, bold = true })
	h("Statement", { fg = M.palette.accent, bold = true })
	h("@keyword.control", { fg = M.palette.accent, bold = true })
	h("@keyword.return", { fg = M.palette.accent, bold = true })

	h("Function", { fg = M.palette.orange })
	h("@function", { fg = M.palette.orange })
	h("@method", { fg = M.palette.orange })
	h("@function.call", { fg = M.palette.orange })
	h("@method.call", { fg = M.palette.orange })

	h("Type", { fg = M.palette.yellow })
	h("@type", { fg = M.palette.yellow })
	h("String", { fg = M.palette.beige })
	h("@string", { fg = M.palette.beige })
	h("Constant", { fg = M.palette.cream })
	h("@constant", { fg = M.palette.cream })
	h("@constant.builtin", { fg = M.palette.cream })
	h("@constant.macro", { fg = M.palette.cream })
	h("@variable.constant", { fg = M.palette.cream })
	h("@lsp.type.enumMember", { fg = M.palette.yellow })
	h("@lsp.type.variable.readonly", { fg = M.palette.cream })
	h("@lsp.typemod.variable.readonly", { fg = M.palette.cream })
	h("@lsp.typemod.variable.static", { fg = M.palette.cream })
	h("Number", { fg = M.palette.accent })
	h("Boolean", { fg = M.palette.accent })
	h("@variable", { fg = M.palette.white })

	h("DiagnosticError", { fg = M.palette.accent_secondary })
	h("DiagnosticWarn", { fg = M.palette.yellow })
	h("DiagnosticInfo", { fg = M.palette.accent })
	h("DiagnosticHint", { fg = M.palette.comment })
	h("DiagnosticUnderlineError", { undercurl = true, sp = M.palette.accent_secondary })
	h("DiagnosticUnderlineWarn", { undercurl = true, sp = M.palette.yellow })

	h("GitSignsAdd", { fg = M.palette.accent })
	h("GitSignsChange", { fg = M.palette.yellow })
	h("GitSignsDelete", { fg = M.palette.accent_secondary })

	h("LineNr", { fg = M.palette.border })
	h("CursorLineNr", { fg = M.palette.accent, bold = true })
	h("Visual", { bg = M.palette.selection })
	h("CursorLine", { bg = M.palette.bg_secondary })
	h("StatusLine", { fg = M.palette.fg, bg = M.palette.bg_secondary })
	h("StatusLineNC", { fg = M.palette.comment, bg = M.palette.bg })
	h("VertSplit", { fg = M.palette.border })

	h("TelescopeBorder", { fg = M.palette.border, bg = M.palette.bg })
	h("TelescopeNormal", { bg = M.palette.bg })
	h("TelescopeSelection", { bg = M.palette.selection })

	h("CmpItemAbbrMatch", { fg = M.palette.accent, bold = true })
	h("CmpItemKindFunction", { fg = M.palette.orange_dark })
	h("CmpItemKindKeyword", { fg = M.palette.accent })
	h("CmpItemKindFolder", { fg = M.palette.orange_light })
	h("CmpItemKindFile", { fg = M.palette.fg })

	h("Special", { fg = M.palette.beige })
	h("Underlined", { fg = M.palette.beige, underline = true })
	h("MatchParen", { bg = M.palette.selection, fg = M.palette.yellow, bold = true })
	h("WildMenu", { bg = M.palette.selection, fg = M.palette.fg })
	h("Pmenu", { bg = M.palette.bg_secondary, fg = M.palette.fg })
	h("PmenuSel", { bg = M.palette.selection, fg = M.palette.fg })
	h("PmenuThumb", { bg = M.palette.comment })

	h("Directory", { fg = M.palette.orange_light })
	h("MoreMsg", { fg = M.palette.beige })
	h("Question", { fg = M.palette.beige })
	h("Title", { fg = M.palette.beige })
	h("MsgArea", { fg = M.palette.fg })
	h("ModeMsg", { fg = M.palette.beige })

	h("AlphaHeader", { fg = M.palette.accent })
	h("AlphaButtons", { fg = M.palette.accent })
	h("AlphaShortcut", { fg = M.palette.yellow })
	h("DashboardHeader", { fg = M.palette.accent })
	h("DashboardCenter", { fg = M.palette.accent })
	h("DashboardShortcut", { fg = M.palette.yellow })
	h("DashboardFooter", { fg = M.palette.orange_dark })

	h("SnacksDashboardHeader", { fg = M.palette.accent })
	h("SnacksDashboardIcon", { fg = M.palette.accent })
	h("SnacksDashboardKey", { fg = M.palette.yellow })
	h("SnacksDashboardDesc", { fg = M.palette.accent })
	h("SnacksDashboardDir", { fg = M.palette.orange_light })
	h("SnacksDashboardFile", { fg = M.palette.fg })
	h("SnacksDashboardSpecial", { fg = M.palette.accent })

	h("Label", { fg = M.palette.accent })
	h("SpecialKey", { fg = M.palette.accent })

	h("htmlTag", { fg = M.palette.accent })
	h("htmlTagName", { fg = M.palette.accent })
	h("htmlArg", { fg = M.palette.orange_dark })
	h("htmlEndTag", { fg = M.palette.accent })
	h("htmlString", { fg = M.palette.beige })
	h("@tag", { fg = M.palette.yellow })
	h("@tag.builtin", { fg = M.palette.accent })
	h("@tag.attribute", { fg = M.palette.orange_dark })
	h("@tag.delimiter", { fg = M.palette.comment })
	h("@punctuation.bracket", { fg = M.palette.fg })
	h("@punctuation.delimiter", { fg = M.palette.fg })
	h("@constructor", { fg = M.palette.yellow })
	h("@property", { fg = M.palette.orange_dark })
	h("@variable.member", { fg = M.palette.orange_dark })
	h("@punctuation.definition.string.begin.html", { fg = M.palette.beige })
	h("@punctuation.definition.string.end.html", { fg = M.palette.beige })

	h("jsonKeyword", { fg = M.palette.yellow })
	h("jsonQuote", { fg = M.palette.yellow })
	h("jsonKey", { fg = M.palette.yellow })
	h("@property.json", { fg = M.palette.yellow })
	h("@label.json", { fg = M.palette.yellow })
	h("@string.special.symbol.json", { fg = M.palette.yellow })

	h("@lsp.type.class", { fg = M.palette.yellow })
	h("@lsp.type.interface", { fg = M.palette.yellow })
	h("@lsp.type.type", { fg = M.palette.yellow })
	h("@lsp.type.parameter", { fg = M.palette.white })
	h("@lsp.type.property", { fg = M.palette.orange_dark })
	h("@lsp.type.enumMember", { fg = M.palette.yellow })
	h("@lsp.type.function", { fg = M.palette.orange })
	h("@lsp.type.method", { fg = M.palette.orange })
	h("@lsp.type.variable", { fg = M.palette.white })
	h("@lsp.type.keyword", { fg = M.palette.orange_dark })

	h("markdownHeadingDelimiter", { fg = M.palette.accent, bold = true })
	h("markdownCode", { fg = M.palette.yellow })
	h("markdownCodeBlock", { fg = M.palette.yellow })
	h("markdownH1", { fg = M.palette.orange_light, bold = true })
	h("markdownH2", { fg = M.palette.orange, bold = true })
	h("markdownH3", { fg = M.palette.accent, bold = true })
	h("markdownH4", { fg = M.palette.orange_dark, bold = true })
	h("markdownH5", { fg = M.palette.yellow, bold = true })
	h("markdownH6", { fg = M.palette.comment, bold = true })
	h("markdownLinkText", { fg = M.palette.orange_light })
	h("markdownUrl", { fg = M.palette.orange_light, underline = true })
	h("@markup.heading", { fg = M.palette.accent, bold = true })
	h("@markup.heading.1", { fg = M.palette.orange_light, bold = true })
	h("@markup.heading.2", { fg = M.palette.orange, bold = true })
	h("@markup.heading.3", { fg = M.palette.accent, bold = true })
	h("@markup.heading.4", { fg = M.palette.orange_dark, bold = true })
	h("@markup.heading.5", { fg = M.palette.yellow, bold = true })
	h("@markup.heading.6", { fg = M.palette.comment, bold = true })
	h("@markup.list", { fg = M.palette.accent })
	h("@markup.link", { fg = M.palette.orange_light })
	h("@markup.link.label", { fg = M.palette.yellow })
	h("@markup.link.url", { fg = M.palette.orange_light, underline = true })
	h("@markup.raw", { fg = M.palette.yellow })
	h("@markup.italic", { fg = M.palette.orange_dark, italic = true })
	h("@markup.emphasis", { fg = M.palette.orange_dark, italic = true })
	h("markdownItalic", { fg = M.palette.orange_dark, italic = true })
	h("markdownItalicDelimiter", { fg = M.palette.orange_dark, italic = true })
	h("@markup.strong", { fg = M.palette.orange_light, bold = true })
	h("markdownBold", { fg = M.palette.orange_light, bold = true })

	if package.loaded["lualine"] then
		require("lualine").setup({ options = { theme = "abacatepay-theme-dev" } })
	end
end

return M
