# AbacatePay Theme for Neovim

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

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

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "almeidazs/abacatepay-theme",
  config = function()
    vim.cmd.colorscheme("abacatepay-theme")
  end,
})
```

## Configuration

The theme comes with sensible defaults. To apply the theme manually or in your init file:

```lua
vim.cmd("colorscheme abacatepay-theme")
```

For Lualine support, the theme is automatically detected if `lualine` is loaded before the theme setup, or you can explicitly set it:

```lua
require('lualine').setup {
  options = {
    theme = 'abacatepay-theme'
  }
}
```
