vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("nordic")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.cmd.colorscheme("citruszest")

-- basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 10

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- visual settings
vim.opt.termguicolors = true
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.signcolumn = "yes"

-- file settings
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.updatetime = 50
vim.opt.autoread = true
vim.opt.autowrite = false
