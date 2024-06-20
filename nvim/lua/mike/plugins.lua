-- Bootstrap lazy package manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd('colorscheme tokyonight-night')
    end
  },

  "tpope/vim-commentary",
  "tpope/vim-surround",
  "tpope/vim-sleuth",
  "tpope/vim-repeat",

  {
    "whatyouhide/vim-textobj-xmlattr",
    dependencies = "kana/vim-textobj-user"
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },

  "AndrewRadev/splitjoin.vim",

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "nvim-telescope/telescope-fzf-native.nvim"
    },
    config = function()
      require('mike/plugins/telescope')
    end
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require('lualine').setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },
  },

  {
    "voldikss/vim-floaterm",
    config = function()
      require('mike/plugins/floaterm')
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
    config = function()
      require('mike/plugins/treesitter')
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "b0o/schemastore.nvim"
    },
    config = function()
      require('mike/plugins/lspconfig')
    end
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind-nvim"
    },
    config = function()
      require('mike/plugins/cmp')
    end
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require('mike/plugins/whichkey')
    end
  },

  require('mike/plugins/conform')

})

