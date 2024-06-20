local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "diff",
    "dockerfile",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "html",
    "http",
    "javascript",
    "json",
    "lua",
    "luadoc",
    "php",
    "php_only",
    "phpdoc",
    "regex",
    "scss",
    "sql",
    "tsx",
    "typescript",
    "vim",
    "vue"
  },

  sync_install = true,

  highlight = {
    enable = true
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["if"] = "@function.inner",
        ["af"] = "@function.outer",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
      }
    }
  }

})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = {
      "src/parser.c",
    },
    branch = "main",
    generate_requires_npm = true,
    requires_generate_from_grammar = false,
  },

  filetype = "blade"
}
