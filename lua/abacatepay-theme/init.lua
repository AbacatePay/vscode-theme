local M = {}

M.palette = {
  bg = "#121217",
  fg = "#E2E7F1",
  green = "#9EEA6C",
  dark_green = "#58C411",
  teal = "#204749",
  medium_teal = "#486869",
  gray = "#8A8AA3",
  light_gray = "#AFAFC0",
  selection = "#486869",
}

function M.setup()
  vim.cmd("hi clear")
  vim.o.termguicolors = true
  vim.g.colors_name = "abacatepay-theme"

  local h = function(group, settings)
    vim.api.nvim_set_hl(0, group, settings)
  end

  h("Normal", { fg = M.palette.fg, bg = M.palette.bg })
  h("Cursor", { fg = M.palette.bg, bg = M.palette.green })
  h("CursorLine", { bg = "#20474933" })
  h("LineNr", { fg = M.palette.teal })
  h("CursorLineNr", { fg = M.palette.green })
  h("Visual", { bg = M.palette.selection })
  
  h("Comment", { fg = M.palette.gray, italic = true })
  h("Constant", { fg = M.palette.light_gray })
  h("String", { fg = M.palette.dark_green })
  h("Function", { fg = M.palette.green })
  h("Keyword", { fg = M.palette.green })
  h("Type", { fg = M.palette.green })
end

return M
