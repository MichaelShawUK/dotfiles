vim.opt.expandtab = true
vim.opt.shiftwidth = 0
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.breakindent = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'

vim.opt.showmode = false

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt = 'menuone,longest,preview'

vim.opt.title = true
vim.opt.titlestring = '%t'
vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '•', nbsp = '␣' }
vim.opt.fillchars:append({ eob = ' '})

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.inccommand = 'split'

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.clipboard = 'unnamedplus'

vim.opt.confirm = true

vim.opt.undofile = true
