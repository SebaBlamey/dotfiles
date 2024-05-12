require("nvim-tree").setup({
  diagnostics = {
    enable = true,
  },
  view = {
    icons = {
      default = "",
      symlink = "",
      git = {
        unstaged = "",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        untracked = "U",
      },
    },
  }
})
