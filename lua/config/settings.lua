local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Cursor line
opt.cursorline = true

-- Wrap
opt.wrap = false

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Scroll
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Undo
opt.undofile = true

-- Clipboard (system clipboard)
opt.clipboard = "unnamedplus"

-- Mouse
opt.mouse = "a"

-- True color
opt.termguicolors = true

-- Sign column (for LSP / diagnostics)
opt.signcolumn = "yes"

-- Update time (faster diagnostics / CursorHold)
opt.updatetime = 250

-- hlsearch
opt.hlsearch = false

-- colorscheme
vim.cmd("colorscheme tokyonight-night")

vim.cmd([[
  highlight DiagnosticUnderlineError gui=undercurl guisp=#ff0000
  highlight DiagnosticUnderlineWarn  gui=undercurl guisp=#ffaa00
  highlight DiagnosticUnderlineInfo  gui=undercurl guisp=#00aaff
  highlight DiagnosticUnderlineHint  gui=undercurl guisp=#888888
]])
