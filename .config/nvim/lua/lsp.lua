vim.cmd [[ packadd completion-nvim ]]

local nvim_lsp = require('lspconfig')
local completion = require('completion')

local custom_attach = function()
  completion.on_attach()
end

nvim_lsp.rust_analyzer.setup{
  on_attach = custom_attach
}
