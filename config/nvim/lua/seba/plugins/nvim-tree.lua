return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
		
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.api.nvim_set_keymap('n','<C-d>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n','<C-h>','<C-w>h', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
	end,
}
