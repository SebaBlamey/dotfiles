vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

-- nvim-tree
-- abrir archivo en vertical con "S"
map("n", "<leader>e", ":Neotree toggle<CR>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")

-- bufferline
map("n", "<M-l>", ":BufferLineCycleNext<CR>")
map("n", "<M-h>", ":BufferLineCyclePrev<CR>")

-- abrir terminal en la izquierda
map("n", "<C-t>", ":vsplit | :term<CR>")

-- cerrar la pestana
map("n", "<C-w>", ":bdelete<CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")

-- Seleccionar
map("n", "<C-a>", "ggVG") -- todo el archivo

-- Copiar al portapapeles
map("v", "Y", '"+y')
