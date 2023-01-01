require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "clangd", "pyright", "gopls" }
})

local on_attach = function(_, _)
  vim.keymap.set("n", "F", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
