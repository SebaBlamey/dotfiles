local status, telescope = pcall(require, "telescope")
if not status then
  return
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.env",
      "yarn.lock",
      "package%-lock.json",
      "lazy-lock.json",
      "init.sql",
      "target/.*",
      ".git/.*",
      "pack/",
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
  },
})
