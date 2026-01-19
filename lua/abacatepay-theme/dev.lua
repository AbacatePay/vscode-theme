local M = {}

M.palette = {
	bg = "#101213",
	bg_secondary = "#161819",
	selection = "#263238",
	border = "#1B1B22",

	fg = "#F5E6D3",
	comment = "#9B8B7A",

	accent = "#FFC266",
	orange = "#FFC266",
	orange_dark = "#D17A2C",
	orange_light = "#FFD6A5",
	orange_brand = "#CA6702",

	green = "#C6EF9D",
	light_green = "#D9F2C7",
	olive = "#7A916E",

	beige = "#D4A373",
	seed_brown = "#BFA58A",

	yellow = "#FAF4C8",
	cream = "#F5E6D3",
	white = "#F5E6D3",

	gray = "#94A3B8",
	teal = "#3D5F61",

	error = "#E67E22",
	warn = "#FAF4C8",
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
	vim.g.colors_name = "abacatepay-theme-dev"

	local h = function(group, settings)
		vim.api.nvim_set_hl(0, group, settings)
	end

	h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	h("NormalFloat", { fg = M.palette.fg, bg = M.palette.bg_secondary })
	h("Identifier", { fg = M.palette.olive })
	h("@variable", { fg = M.palette.fg })
	h("@variable.parameter", { fg = M.palette.light_green, italic = true })
	h("@variable.member", { fg = M.palette.olive })
	h("@variable.property", { fg = M.palette.olive })

	h("Keyword", { fg = M.palette.olive })
	h("StorageClass", { fg = M.palette.olive })
	h("Structure", { fg = M.palette.olive })
	h("PreProc", { fg = M.palette.olive })
	h("Include", { fg = M.palette.olive })
	h("@keyword", { fg = M.palette.olive })
	h("@keyword.function", { fg = M.palette.olive })
	h("@module", { fg = M.palette.olive })

	h("Conditional", { fg = M.palette.orange_brand, bold = true })
	h("Repeat", { fg = M.palette.orange_brand, bold = true })
	h("Statement", { fg = M.palette.orange_brand, bold = true })
	h("@keyword.control", { fg = M.palette.orange_brand, bold = true })
	h("@keyword.return", { fg = M.palette.orange_brand, bold = true })

	h("Function", { fg = M.palette.orange })
	h("@function", { fg = M.palette.orange })
	h("@method", { fg = M.palette.orange })
	h("@function.call", { fg = M.palette.orange })
	h("@method.call", { fg = M.palette.orange })

	h("Type", { fg = M.palette.beige })
	h("@type", { fg = M.palette.beige })
	h("String", { fg = M.palette.seed_brown })
	h("@string", { fg = M.palette.seed_brown })
	h("Constant", { fg = M.palette.cream })
	h("@constant", { fg = M.palette.cream })
	h("@constant.builtin", { fg = M.palette.cream })
	h("@constant.macro", { fg = M.palette.cream })
	h("@variable.constant", { fg = M.palette.cream })
	h("@lsp.type.enumMember", { fg = M.palette.yellow })
	h("@lsp.type.variable.readonly", { fg = M.palette.cream })
	h("@lsp.typemod.variable.readonly", { fg = M.palette.cream })
	h("@lsp.typemod.variable.static", { fg = M.palette.cream })
	h("Number", { fg = M.palette.green })
	h("Boolean", { fg = M.palette.green })
	h("@variable", { fg = M.palette.white })

	h("DiagnosticError", { fg = M.palette.accent_secondary })
	h("DiagnosticWarn", { fg = M.palette.yellow })
	h("DiagnosticInfo", { fg = M.palette.accent })
	h("DiagnosticHint", { fg = M.palette.comment })
	h("DiagnosticUnderlineError", { undercurl = true, sp = M.palette.accent_secondary })
	h("DiagnosticUnderlineWarn", { undercurl = true, sp = M.palette.yellow })

	h("GitSignsAdd", { fg = M.palette.green })
	h("GitSignsChange", { fg = M.palette.yellow })
	h("GitSignsDelete", { fg = M.palette.orange_dark })

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

	h("CmpItemAbbrMatch", { fg = M.palette.green, bold = true })
	h("CmpItemKindFunction", { fg = M.palette.orange_dark })
	h("CmpItemKindKeyword", { fg = M.palette.green })
	h("CmpItemKindFolder", { fg = M.palette.light_green })
	h("CmpItemKindFile", { fg = M.palette.fg })

	h("Special", { fg = M.palette.beige })
	h("Underlined", { fg = M.palette.beige, underline = true })
	h("MatchParen", { bg = M.palette.selection, fg = M.palette.yellow, bold = true })
	h("WildMenu", { bg = M.palette.selection, fg = M.palette.fg })
	h("Pmenu", { bg = M.palette.bg_secondary, fg = M.palette.fg })
	h("PmenuSel", { bg = M.palette.selection, fg = M.palette.fg })
	h("PmenuThumb", { bg = M.palette.comment })

	h("Directory", { fg = M.palette.light_green })
	h("MoreMsg", { fg = M.palette.beige })
	h("Question", { fg = M.palette.beige })
	h("Title", { fg = M.palette.beige })
	h("MsgArea", { fg = M.palette.fg })
	h("ModeMsg", { fg = M.palette.beige })

	h("AlphaHeader", { fg = M.palette.green })
	h("AlphaButtons", { fg = M.palette.green })
	h("AlphaShortcut", { fg = M.palette.yellow })
	h("DashboardHeader", { fg = M.palette.green })
	h("DashboardCenter", { fg = M.palette.green })
	h("DashboardShortcut", { fg = M.palette.yellow })
	h("DashboardFooter", { fg = M.palette.orange_dark })

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
	h("htmlArg", { fg = M.palette.orange_dark })
	h("htmlEndTag", { fg = M.palette.green })
	h("htmlString", { fg = M.palette.beige })
	h("@tag", { fg = M.palette.yellow })
	h("@tag.builtin", { fg = M.palette.green })
	h("@tag.attribute", { fg = M.palette.orange_dark })
	h("@tag.delimiter", { fg = M.palette.comment })
	h("@punctuation.bracket", { fg = M.palette.fg })
	h("@punctuation.delimiter", { fg = M.palette.fg })
	h("@constructor", { fg = M.palette.yellow })
	h("@property", { fg = M.palette.olive })
	h("@variable.member", { fg = M.palette.olive })
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
	h("@lsp.type.parameter", { fg = M.palette.olive })
	h("@lsp.type.property", { fg = M.palette.orange_dark })
	h("@lsp.type.enumMember", { fg = M.palette.yellow })
	h("@lsp.type.function", { fg = M.palette.orange })
	h("@lsp.type.method", { fg = M.palette.orange })
	h("@lsp.type.variable", { fg = M.palette.olive })
	h("@lsp.type.keyword", { fg = M.palette.orange_dark })

	h("markdownHeadingDelimiter", { fg = M.palette.orange_brand, bold = true })
	h("markdownCode", { fg = M.palette.beige })
	h("markdownCodeBlock", { fg = M.palette.beige })
	h("markdownH1", { fg = M.palette.orange_light, bold = true })
	h("markdownH2", { fg = M.palette.orange_brand, bold = true })
	h("markdownH3", { fg = M.palette.green, bold = true })
	h("markdownH4", { fg = M.palette.olive, bold = true })
	h("markdownH5", { fg = M.palette.beige, bold = true })
	h("markdownH6", { fg = M.palette.comment, bold = true })
	h("markdownLinkText", { fg = M.palette.light_green })
	h("markdownUrl", { fg = M.palette.light_green, underline = true })
	h("@markup.heading", { fg = M.palette.orange_brand, bold = true })
	h("@markup.heading.1", { fg = M.palette.orange_light, bold = true })
	h("@markup.heading.2", { fg = M.palette.orange_brand, bold = true })
	h("@markup.heading.3", { fg = M.palette.green, bold = true })
	h("@markup.heading.4", { fg = M.palette.olive, bold = true })
	h("@markup.heading.5", { fg = M.palette.beige, bold = true })
	h("@markup.heading.6", { fg = M.palette.comment, bold = true })
	h("@markup.list", { fg = M.palette.orange_brand })
	h("@markup.link", { fg = M.palette.light_green })
	h("@markup.link.label", { fg = M.palette.beige })
	h("@markup.link.url", { fg = M.palette.light_green, underline = true })
	h("@markup.raw", { fg = M.palette.beige })
	h("@markup.italic", { fg = M.palette.olive, italic = true })
	h("@markup.emphasis", { fg = M.palette.olive, italic = true })
	h("markdownItalic", { fg = M.palette.olive, italic = true })
	h("markdownItalicDelimiter", { fg = M.palette.olive, italic = true })
	h("@markup.strong", { fg = M.palette.orange_brand, bold = true })
	h("markdownBold", { fg = M.palette.orange_brand, bold = true })

	if package.loaded["lualine"] then
		require("lualine").setup({ options = { theme = "abacatepay-theme-dev" } })
	end
end

return M
