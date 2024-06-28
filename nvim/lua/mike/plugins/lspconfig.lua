require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    "intelephense",
    "tsserver",
    "tailwindcss",
    "jsonls",
    "emmet_language_server",
    "volar",
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

require('lspconfig').tsserver.setup({
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/home/mike/.nvm/versions/node/v18.16.0/lib/node_modules/@vue/typescript-plugin",
        languages = { "vue" },
      },
    }
  },
  filetypes = { "vue", "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
})

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

require('lspconfig').emmet_language_server.setup({
  filetypes = { "vue", "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
})

require('lspconfig').volar.setup({})

vim.diagnostic.config({
  float = {
    source = true
  }
})
