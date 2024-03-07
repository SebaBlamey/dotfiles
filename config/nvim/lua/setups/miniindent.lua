local status, miniindent = pcall(require, "mini.indentscope'")
if not status then
	return
end

miniindent.setup({})
