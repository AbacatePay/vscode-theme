local dark_palette = {
	bg = "#101213",
	fg = "#ECF0F1",
	green = "#C6EF9D",
	yellow = "#FAF4C8",
	teal = "#3D5F61",
	olive = "#7A916E",
	brown = "#D4A373",
	error = "#E67E22",
	selection = "#263238",
	gray = "#94A3B8",
}

local light_palette = {
	bg = "#F1F1F0",
	fg = "#3F4E4F",
	green = "#4C7A2E",
	yellow = "#B58900",
	teal = "#2F4F4F",
	olive = "#556B2F",
	brown = "#A0522D",
	error = "#B22222",
	selection = "#E5E5E1",
	gray = "#708090",
}

local function get_theme()
	local p = vim.o.background == "light" and light_palette or dark_palette

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
