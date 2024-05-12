local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

vim.opt.termguicolors = true
bufferline.setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "center",
			},
		},
		mode = "buffer",
		buffer_close_icon = "󰅖",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",

		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or ""
			return " " .. icon .. " " .. count .. " "
		end,

		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
