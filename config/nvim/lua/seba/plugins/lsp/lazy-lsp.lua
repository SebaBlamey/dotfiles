return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    {"hrsh7th/nvim-cmp", config = function()
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "nvim_lua" }, 
          { name = "path" },    
          { name = "buffer" },
		  { name = "gopls"},
          { name = "vsnip" },
          { name = "emoji" },     -- Para emojis (opcional)
          { name = "html" },      -- Soporte para HTML
          { name = "javascript" },-- Soporte para JavaScript
          { name = "typescript" },-- Soporte para TypeScript
          { name = "css" },       -- Soporte para CSS
          { name = "cpp" },       -- Soporte para C++
        },
        mapping = {
          ["<Tab>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          }),
        },
      })
    end}
  },

  config = function()
    local nvim_lsp = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
  
    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr
    end

    local capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    nvim_lsp["pyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach, 
    })

	nvim_lsp["gopls"].setup({
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = {'gopls','--remote=auto'}
	})
	
	nvim_lsp["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
  end,
}

