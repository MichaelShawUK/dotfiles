local wk = require('which-key')
wk.setup()

wk.register({
  ['<leader>s'] = { name = '[S]earch' },
  ['<leader>l'] = { name = '[L]SP' },
  ['gS'] = { name = "[S]plit block" },
  ['gJ'] = { name = "[J]oin block" },
})
