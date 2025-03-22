-- vim.cmd.colorscheme("kanagawa-dragon")
vim.cmd.colorscheme("nordic")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.cmd.colorscheme("citruszest")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

-- tab configuration
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

vim.opt.updatetime = 50
vim.opt.cursorline = true
