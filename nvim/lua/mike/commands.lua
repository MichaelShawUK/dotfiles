-- Open help window on RHS at 80 character width
local vim_help = vim.api.nvim_create_augroup("vim_help", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = vim_help,
  pattern = { "*.txt" },
  command = "if &buftype == 'help' | wincmd L | vertical resize 82 | endif"
})

-- Highlight text when yanking
local yank_highlight = vim.api.nvim_create_augroup('yank_highlight', { clear = true })

vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  group = yank_highlight,
  callback = function()
    vim.highlight.on_yank()
  end
})
