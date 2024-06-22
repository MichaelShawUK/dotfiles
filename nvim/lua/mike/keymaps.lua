vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Write file
vim.keymap.set('n', '<C-s>', ":write<CR>")

-- Prevents jumping multiple lines when moving over wrapped lines
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true})
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true})

-- Clear highlighting on search results
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keep selection highlighted when indenting in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Remain in final position when pasting in visual mode
vim.keymap.set('v', 'y', 'myy`y')

-- Mapping for q: typo
vim.keymap.set('n', 'q:', ':q')

-- Prevent overwriting of current paste register when pasting over highlighted text
vim.keymap.set('v', 'p', '"_dP')

-- Add semi-colon to end of line wherever cursor is in line
-- vim.keymap.set('i', ';;', '<Esc>A;')

-- Move lines up or down with Alt - j/k
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==', { desc = "Shift line down" })
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==', { desc = "Shift line up" })
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")

-- Insert new line at cursor position
vim.keymap.set('n', 'K', function()
  if (vim.api.nvim_win_get_cursor(0)[2] > 0) then
    return 'i<CR><Esc>l'
  else
    return 'i<CR><Esc>'
  end
end, { expr = true }
  )

-- Disable arrow keys
vim.keymap.set('n', '<left>', '')
vim.keymap.set('n', '<right>', '')
vim.keymap.set('n', '<up>', '')
vim.keymap.set('n', '<down>', '')

-- Window switching mappings
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = "Switch to left window" })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = "Switch to window below" })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = "Switch to window above" })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = "Switch to right window" })

-- Switch between two most recent buffers
vim.keymap.set('n', '<C-`>', ':b#<CR>')

-- Toggle neotree
vim.keymap.set('n', '\\', ':Neotree toggle<CR>')

-- LSP mappings
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP: [G]o to [D]efinition' })
vim.keymap.set('n', '<leader>lr', function() require('telescope.builtin').lsp_references() end, { desc = '[L]SP: Go to [R]eferences' })
vim.keymap.set('n', 'H', vim.lsp.buf.hover, { desc = 'LSP: Hover' })
vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, { desc = '[L]SP: Re[n]ame' })

-- Diagnostic mappings
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1 }) end, { desc = 'Go to previous [D]iagnostic message'})
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1 }) end, { desc = 'Go to next [D]iagnostic message'})
