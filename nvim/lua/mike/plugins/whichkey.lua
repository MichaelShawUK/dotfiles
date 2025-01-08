local wk = require('which-key')
wk.setup()

wk.register({
    { "<leader>l", group = "[L]SP" },
    { "<leader>s", group = "[S]earch" },
    { "gJ", group = "[J]oin block" },
    { "gS", group = "[S]plit block" },
})
