<h1 align="center">AbacatePay Theme for Neovim</h1>

<p align="center">Green-first color scheme for Neovim, inspired by the AbacatePay visual identity.</p>

<h2 align="center">Installation</h2>

<p align="center"><a href="https://github.com/folke/lazy.nvim">lazy.nvim</a></p>

```lua
{
  "almeidazs/abacatepay-theme",
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
  "almeidazs/abacatepay-theme",
  config = function()
    vim.cmd.colorscheme("abacatepay-theme")
  end,
})
```

<h2 align="center">Configuration</h2>

<p align="center">The theme comes with sensible defaults. To apply the theme manually or in your init file</p>

```lua
vim.cmd("colorscheme abacatepay-theme")
```

<p align="center">For Lualine support, the theme is automatically detected if `lualine` is loaded before the theme setup, or you can explicitly set it</p>

```lua
require("lualine").setup {
  options = {
    theme = "abacatepay-theme"
  }
}
```
