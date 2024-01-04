return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bj", "<cmd>BufferLinePick<cr>", desc = "Jump" },
    },
  },
  {
    "echasnovski/mini.nvim",
    keys = {
      { "<leader>d", "<cmd><cr>" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        tsserver = {
          init_options = {
            preferences = {
              importModuleSpecifierPreference = "relative",
              importModuleSpecifierEnding = "minimal",
            },
          },
        },
      },
    },
  },
}
