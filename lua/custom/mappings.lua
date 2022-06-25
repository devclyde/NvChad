local M = {}

M.insert_mode = {
  ['<C-d>'] = '<Esc>yyp<Insert>',
  ['<C-x>'] = '<Esc>ddk<Insert>'
}

return M
