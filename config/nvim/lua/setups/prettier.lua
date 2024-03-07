local status, prettier = pcall(require, "prettier")
if not status then
	return
end

prettier.setup({
	bin = "prettier",
	filetypes = {
		"css",
		"scss",
		"html",
		"json",
		"yaml",
		"markdown",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
})
