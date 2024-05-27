return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  { "rebelot/kanagawa.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
