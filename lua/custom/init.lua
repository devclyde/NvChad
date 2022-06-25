local mappings = require('custom.mappings')

local defaults = {
  noremap = true,
  silent = true
}

for key, action in pairs(mappings.normal_mode or {}) do
  vim.api.nvim_set_keymap('n', key, action, defaults)
end

for key, action in pairs(mappings.visual_mode or {}) do
  vim.api.nvim_set_keymap('v', key, action, defaults)
end

for key, action in pairs(mappings.insert_mode or {}) do
  vim.api.nvim_set_keymap('i', key, action, defaults)
end

