set number
set ruler
set autoindent
set mouse=a
set tabstop=4
set shiftwidth=4
set hlsearch
set relativenumber

inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
nnoremap <silent> <C-d> :NERDTreeToggle<CR>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'm4xshen/autoclose.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme tokyonight-night

let g:NERDTreeDirArrows = 0
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeEnableDevicons = 1

" Configurar servidor LSP para Go en coc.nvim
let g:coc_global_extensions = ['coc-tsserver', 'coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-vetur', 'coc-snippets', 'coc-highlight', 'coc-yaml', 'coc-go']

" Habilitar autocompletado de pares de simbolos
lua << END
require('autoclose').setup()
require('lualine').setup {
  options = {
    icons= 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END


