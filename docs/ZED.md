# AbacatePay Theme for Zed 🥑

A green-first theme designed for AbacatePay, now available for Zed.

## Installation

### Local Development (Manual)

To use this theme locally before it is officially available in the Zed marketplace:

1. Clone this repository.
2. Open Zed and go to the extensions directory:
   - **macOS/Linux**: `~/.config/zed/extensions/local/`
   - **Windows**: `%USERPROFILE%\AppData\Roaming\Zed\extensions\local\`
3. Create a symbolic link or copy the `editors/zed` folder to that directory:
   ```bash
   ln -s /path/to/abacatepay-theme/editors/zed ~/.config/zed/extensions/local/abacatepay-theme
   ```
4. Restart Zed or reload the extensions.
5. Open the Theme Selector (`Cmd+K Cmd+T` or `Ctrl+K Ctrl+T`) and search for **AbacatePay**.

## Publishing to the Marketplace

To make this theme available for everyone in the Zed Marketplace, you need to submit it to the [Zed Extensions repository](https://github.com/zed-industries/extensions).

1. Fork `zed-industries/extensions`.
2. Add the `abacatepay-theme` directory from `editors/zed` to the `extensions/` folder in your fork.
3. Submit a Pull Request.

More details can be found in the [Zed Extension Documentation](https://zed.dev/docs/extensions).
