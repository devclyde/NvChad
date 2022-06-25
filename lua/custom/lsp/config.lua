local M = {}

M.setup_lsp = function (attach, capabilities)
  require('custom.lsp.sumneko_lua').setup(attach, capabilities)
end

return M
