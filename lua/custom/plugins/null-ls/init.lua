local null_ls = require('null-ls')
local builtins = null_ls.builtins

local sources = {
  builtins.formatting.prettierd.with {
    filetypes = { 'html', 'css', 'markdown' }
  },
  builtins.formatting.deno_fmt,

  builtins.formatting.stylua,
  builtins.diagnostics.luacheck.with {
    extra_args = {
      '--global vim'
    }
  },

  builtins.formatting.shfmt,
  builtins.diagnostics.shellcheck.with {
    diagnostics_format = '#{m} [#{c}]'
  }
}

return function ()
  null_ls.setup {
    debug = true,
    sources = sources,
    on_attach = function (client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd [[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]]
      end
    end
  }
end
