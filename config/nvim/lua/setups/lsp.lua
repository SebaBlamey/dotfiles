local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
  return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = "Format",
      bufnr = bufnr,
      [[
            autocmd! * <buffer>
            autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
            ]],
    })
  end
end

local capabilities = protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- TypeScript
nvim_lsp.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- CSS
nvim_lsp.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Tailwind
nvim_lsp.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Python
nvim_lsp.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Bash
nvim_lsp.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Lua
nvim_lsp.sumneko_lua.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- eslint
nvim_lsp.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- html
nvim_lsp.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- latex
nvim_lsp.texlab.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
