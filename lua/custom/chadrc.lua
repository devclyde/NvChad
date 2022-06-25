local M = {}

M.options = {
  user = function ()
    vim.g.neovide_transparency = 0.9

    vim.opt.sidescrolloff = 8
    vim.opt.scrolloff = 8
    vim.opt.wrap = false
    vim.opt.termguicolors = true
    vim.opt.mouse = 'a'
    vim.opt.guifont = 'JetBrainsMono Nerd Font:h12'
    vim.opt.clipboard = 'unnamedplus'
    vim.opt.backup = false
    vim.opt.writebackup = false
    vim.opt.swapfile = false
    vim.opt.shell = '/usr/bin/fish --login'
  end
}

M.ui = {
  theme = "tokyonight",
  transparency = not vim.g.neovide
}

M.plugins = {
  user = require('custom.plugins'),
  override = {
    ['nvim-treesitter/nvim-treesitter'] = require('custom.plugins.nvim-treesitter')
  },
  options = {
    lspconfig = {
      setup_lspconf = 'custom.lsp.config'
    }
  }
}

return M
