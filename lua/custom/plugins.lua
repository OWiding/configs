local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "typescript-language-server",
        "eslint-lsp",
        "nvim-surround",
        "prettier",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    -- ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
}
return plugins


-- {
--   "mhartington/formatter.nvim",
--   event = "VeryLazy",
--   opts = function()
--     return require "custom.configs.formatter"
--   end
-- },
-- {
--   "mfussenegger/nvim-lint",
--   event "VeryLazy",
--   config = function ()
--     require "custom.configs.lint"
--   end
-- },