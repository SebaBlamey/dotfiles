local status, themery = pcall(require, "themery")
if not status then
  return
end

local themes = {
  { name = "Ayu Dark",          colorscheme = "ayu-dark" },
  { name = "Ayu Light",         colorscheme = "ayu-light" },
  { name = "Ayu Mirage",        colorscheme = "ayu-mirage" },
  { name = "CarbonFox",         colorscheme = "carbonfox" },
  { name = "Catppuccin Frappe", colorscheme = "catppuccin-frappe" },
  { name = "Catppuccin Latte",  colorscheme = "catppuccin-latte" },
  { name = "Catppuccin Mocha",  colorscheme = "catppuccin-mocha" },
  { name = "DawnFox",           colorscheme = "dawnfox" },
  { name = "DayFox",            colorscheme = "dayfox" },
  { name = "Dracula",           colorscheme = "dracula" },
  { name = "Dracula Soft",      colorscheme = "dracula-soft" },
  { name = "DuskFox",           colorscheme = "duskfox" },
  { name = "Edge",              colorscheme = "edge" },
  { name = "Everforest",        colorscheme = "everforest" },
  { name = "Flexoki Dark",      colorscheme = "flexoki-dark" },
  { name = "Flexoki Light",     colorscheme = "flexoki-light" },
  { name = "Gruvbox Dark",      colorscheme = "gruvbox",          before = [[ vim.opt.background = "dark" ]] },
  { name = "Gruvbox Light",     colorscheme = "gruvbox",          before = [[ vim.opt.background = "light" ]] },
  { name = "Gruvbox Material",  colorscheme = "gruvbox-material" },
  { name = "Kanagawa Dragon",   colorscheme = "kanagawa-dragon" },
  { name = "Kanagawa Lotus",    colorscheme = "kanagawa-lotus" },
  { name = "Kanagawa Wave",     colorscheme = "kanagawa-wave" },
  { name = "Melange",           colorscheme = "melange" },
  { name = "NightFox",          colorscheme = "nightfox" },
  { name = "NordFox",           colorscheme = "nordfox" },
  { name = "Nordic",            colorscheme = "nordic" },
  { name = "Onedark Dark",      colorscheme = "onedark" },
  { name = "Poimandres",        colorscheme = "poimandres" },
  { name = "Rose Pine",         colorscheme = "rose-pine-main" },
  { name = "Rose Pine Dawn",    colorscheme = "rose-pine-dawn" },
  { name = "Rose Pine Moon",    colorscheme = "rose-pine-moon" },
  { name = "Shado",             colorscheme = "shado" },
  { name = "Sonokai",           colorscheme = "sonokai" },
  { name = "TeraFox",           colorscheme = "terafox" },
  { name = "Tokyonight Day",    colorscheme = "tokyonight-day" },
  { name = "Tokyonight Moon",   colorscheme = "tokyonight-moon" },
  { name = "Tokyonight Night",  colorscheme = "tokyonight-night" },
  { name = "Tokyonight Storm",  colorscheme = "tokyonight-storm" },
}

table.sort(themes, function(a, b)
  return a.name < b.name
end)

themery.setup({
  themes = themes,
  livePreview = true,
  themeConfigFile = "~/.config/nvim/lua/theme.lua",
})
