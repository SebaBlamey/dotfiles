local status, bufferline = pcall(require, "bufferline")
if not status then
    return
end

vim.opt.termguicolors = true
bufferline.setup{
    options = {
        mode = "buffer",
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        
        diagnostics = "nvim_lsp",
        
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    }
}
