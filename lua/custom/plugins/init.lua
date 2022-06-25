return {
  ['andweeb/presence.nvim'] = {},
  ['editorconfig/editorconfig-vim'] = {},
  ['npxbr/glow.nvim'] = {
    ft = { 'markdown' }
  },
  ['folke/todo-comments.nvim'] = {
    config = function ()
      require('custom.plugins.todo-comments-nvim')()
    end
  },
  ['jose-elias-alvarez/null-ls.nvim'] = {
    after = 'nvim-lspconfig',
    config = function ()
      require('custom.plugins.null-ls')()
    end
  }
}
