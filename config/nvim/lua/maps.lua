local function map(mode, lhs, rhs)
	vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

-- nvim-tree
-- abrir archivo en vertical con "S"
map("n", "S", ":vsplit | :NvimTreeFindFile<CR>")
map("n", "<C-d>", ":NvimTreeToggle<CR>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")

-- bufferline
map("n", "<M-l>", ":BufferLineCycleNext<CR>")
map("n", "<M-h>", ":BufferLineCyclePrev<CR>")

-- abrir terminal en la izquierda
map("n", "<C-t>", ":vsplit | :term<CR>")

-- cerrar la pestana
map("n", "<C-w>", ":bd<CR>")

-- Telescope
map("n", "<C-f>", ":Telescope find_files<CR>")

-- Seleccionar
map("n", "<C-a>", "ggVG") -- todo el archivo

-- Copiar al portapapeles
map("v", "Y", '"+y')
