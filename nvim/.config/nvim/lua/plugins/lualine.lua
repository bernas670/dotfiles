return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  config = function ()
    local lualine = require('lualine')
    lualine.setup{
      options = {
        theme = 'auto',
        component_separators = '',
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'lsp_status' },
        lualine_z = { 'location' }
      }
    }
  end
}
