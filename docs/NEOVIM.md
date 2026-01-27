<div align="center">

# AbacatePay Theme for Neovim 🥑

Green-first color scheme for *Neovim*, inspired by the *AbacatePay* visual identity.

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

</div>

```lua
{
  "AbacatePay/vscode-theme",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: Configure the theme here if needed
    -- require("abacatepay-theme").setup({}) 
    vim.cmd.colorscheme("abacatepay-theme")
  end,
}
```

<p align="center"><a href="https://github.com/wbthomason/packer.nvim">packer.nvim</a></p>

```lua
use({
  "AbacatePay/vscode-theme",
  config = function()
    vim.cmd.colorscheme("abacatepay-theme")
  end,
})
```

<div align="center">

## Configuration

The theme comes with sensible defaults. To apply the theme manually or in your init file.

</div>

```lua
vim.cmd("colorscheme abacatepay-theme")
```

<p align="center">Available variants:</p>

```lua
vim.cmd("colorscheme abacatepay-theme") -- Dark (default)
vim.cmd("colorscheme abacatepay-theme-light")
vim.cmd("colorscheme abacatepay-theme-soft")
```

<p align="center">For Lualine support, the theme is automatically detected if `lualine` is loaded before the theme setup, or you can explicitly set it</p>

```lua
require("lualine").setup {
  options = {
    theme = "abacatepay-theme"
  }
}
```
