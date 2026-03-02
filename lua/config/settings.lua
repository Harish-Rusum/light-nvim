local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.undofile = true
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.termguicolors = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.hlsearch = false
opt.fillchars = "eob: "
vim.cmd("colorscheme tokyonight-night")

vim.cmd([[
  highlight DiagnosticUnderlineError gui=undercurl guisp=#ff0000
  highlight DiagnosticUnderlineWarn  gui=undercurl guisp=#ffaa00
  highlight DiagnosticUnderlineInfo  gui=undercurl guisp=#00aaff
  highlight DiagnosticUnderlineHint  gui=undercurl guisp=#888888
]])
