السلام عليكم و رحمه الله و بركاته 
---

# AlcamelNvim


![acamelnvimlogo](./AlcamelNvimLogoRepo.png)

---

## File Structure

```plaintext
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── Plugins
│   │   ├── bufferLine.lua
│   │   ├── colorScheme.lua
│   │   ├── luaLine.lua
│   │   ├── mdPrev.lua
│   │   ├── neoTree.lua
│   │   └── whichKey.lua
│   ├── Scripts
│   │   ├── assets/
│   │   ├── temps/
│   │   ├── copyWhole.lua
│   │   └── writeTemplate.lua
│   ├── plugins.lua              
│   └── scripts.lua
```

---

## Features

* [x] Lazy.nvim plugin management
* [x] Clean and minimal UI
* [x] Status line with lualine
* [x] Buffer management with bufferline
* [x] File explorer with Neo-tree
* [x] Which-key integration
* [x] Custom utility scripts
* [ ] Autocompletion
* [ ] LSP configuration 
* [ ] Snippets support
* [ ] Formatting & linting tools
* [ ] Treesitter integration

---

## Installation

```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/tree-1917/AlcamelNvim ~/.config/nvim
```

Then open Neovim and Lazy.nvim will install plugins automatically.

---

## Contributing

1. Fork the project
2. Add your feature or fix
3. Create a Pull Request

---
