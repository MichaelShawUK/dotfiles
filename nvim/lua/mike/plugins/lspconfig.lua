require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    "intelephense",
    "tsserver",
    "tailwindcss",
    "jsonls",
    "emmet_language_server",
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('highlight_symbols', { clear = true }),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    if client and client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = ev.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = ev.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end
  end
})

require('lspconfig').intelephense.setup({})

require('lspconfig').tsserver.setup({})

require('lspconfig').tailwindcss.setup({})

require('lspconfig').jsonls.setup({
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = {
        enable = true
      }
    }
  }
})

require('lspconfig').emmet_language_server.setup({})

vim.diagnostic.config({
  float = {
    source = true
  }
})
