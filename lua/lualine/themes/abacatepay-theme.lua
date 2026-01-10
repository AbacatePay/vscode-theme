local dark_palette = {
	bg = "#101213",
	fg = "#ECF0F1",
	green = "#C6EF9D",
	olive = "#7A916E",
	brown = "#D4A373",
	selection = "#263238",
}

local light_palette = {
	bg = "#F1F1F0",
	fg = "#3F4E4F",
	green = "#4C7A2E",
	olive = "#556B2F",
	brown = "#A0522D",
	selection = "#E5E5E1",
}

local function get_theme()
	local p = vim.o.background == "light" and light_palette or dark_palette

	return {
		normal = {
			a = { bg = p.green, fg = p.bg, gui = "bold" },
			b = { bg = p.selection, fg = p.fg },
			c = { bg = p.bg, fg = p.fg },
		},
		insert = {
			a = { bg = p.olive, fg = p.bg, gui = "bold" },
		},
		visual = {
			a = { bg = p.brown, fg = p.bg, gui = "bold" },
		},
		replace = {
			a = { bg = p.brown, fg = p.bg, gui = "bold" },
		},
		inactive = {
			a = { bg = p.bg, fg = p.selection },
			b = { bg = p.bg, fg = p.selection },
			c = { bg = p.bg, fg = p.selection },
		},
	}
end

return get_theme()
