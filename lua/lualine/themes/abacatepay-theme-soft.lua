local soft_palette = {
	bg = "#222526",
	fg = "#ECF0F1",
	green = "#C6EF9D",
	yellow = "#FAF4C8",
	teal = "#3D5F61",
	olive = "#7A916E",
	brown = "#D4A373",
	error = "#E67E22",
	selection = "#35393B",
	gray = "#94A3B8",
}

local function get_theme()
	local p = soft_palette

	return {
		normal = {
			a = { bg = p.green, fg = p.bg, gui = "bold" },
			b = { bg = p.selection, fg = p.green },
			c = { bg = p.bg, fg = p.fg },
		},
		insert = {
			a = { bg = p.yellow, fg = p.bg, gui = "bold" },
			b = { bg = p.selection, fg = p.yellow },
			c = { bg = p.bg, fg = p.fg },
		},
		visual = {
			a = { bg = p.teal, fg = "#ECF0F1", gui = "bold" },
			b = { bg = p.selection, fg = p.teal },
			c = { bg = p.bg, fg = p.fg },
		},
		replace = {
			a = { bg = p.error, fg = "#ECF0F1", gui = "bold" },
			b = { bg = p.selection, fg = p.error },
			c = { bg = p.bg, fg = p.fg },
		},
		command = {
			a = { bg = p.brown, fg = p.bg, gui = "bold" },
			b = { bg = p.selection, fg = p.brown },
			c = { bg = p.bg, fg = p.fg },
		},
		inactive = {
			a = { bg = p.bg, fg = p.gray, gui = "bold" },
			b = { bg = p.bg, fg = p.gray },
			c = { bg = p.bg, fg = p.gray },
		},
	}
end

return get_theme()
