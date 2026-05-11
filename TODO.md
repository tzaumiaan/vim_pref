# TODO: Future Improvements

A roadmap for keeping the `vim_pref` environment minimalist, fast, and modern.

## 🚀 Neovim Enhancements (init.lua)
- [ ] **Native LSP Integration**: Configure built-in LSP for `pyright` (Python) and `verible` (SystemVerilog) without heavy plugins.
- [ ] **Terminal Toggle**: Add a Lua function to toggle a floating or split terminal window with a single keybinding (e.g., `<C-t>`).
- [ ] **Smart Search**: Enable `ignorecase` and `smartcase` for more intuitive searching.
- [ ] **LaTeX Workflow**: Add `autocmd` for `.tex` files to enable spellcheck and map `:make` to a PDF compiler.
- [ ] **Tree-sitter**: Research if basic Tree-sitter configurations (for better syntax highlighting) can be added while maintaining the "no-plugin" philosophy.

## 🛠 Script & Installer Improvements
- [ ] **Link Validation**: Update `install.sh` to detect and report "broken" symlinks.
- [ ] **Environment Check**: Enhance the warning system to check for recommended tools like `black` (for Python formatting) or `universal-ctags`.
- [ ] **Color Compatibility**: Add a check to verify if the current terminal supports `termguicolors` and fallback gracefully if it doesn't.

## 🎨 Aesthetics
- [ ] **Salmon Theme Refinement**: Review `salmon.vim` for specific Neovim UI elements (like floating windows or telescope-style menus) to ensure consistent accent colors.
