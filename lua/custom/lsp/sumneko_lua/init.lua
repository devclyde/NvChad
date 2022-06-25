local lspconfig = require('lspconfig')

local M = {}

M.setup = function (attach, capabilities)
  lspconfig['sumneko_lua'].setup {
    on_attach = attach,
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT'
        },
        telemetry = {
          enable = false
        }
      }
    }
  }
end

return M
