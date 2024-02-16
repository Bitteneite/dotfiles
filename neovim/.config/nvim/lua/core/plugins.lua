require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "christoomey/vim-tmux-navigator",
  "tpope/vim-surround",
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
})
