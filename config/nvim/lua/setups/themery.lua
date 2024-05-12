local status, themery = pcall(require, "themery")
if not status then
  return
end

local themes = {
  { "Catppuccin Frappe", "catppuccin-frappe" },
  { "Catppuccin Latte",  "catppuccin-latte" },
  { "Catppuccin Mocha",  "catppuccin-mocha" },
  --[[
  { "Dracula",           "dracula" },
  { "Dracula Soft",      "dracula-soft" },
  { "Everforest",        "everforest" },
  { "Flexoki Dark",      "flexoki-dark" },
  { "Flexoki Light",     "flexoki-light" },
  { "Gruvbox",           "gruvbox" },
  { "Gruvbox Material",  "gruvbox-material" },
  { "Kanagawa Dragon",   "kanagawa-dragon" },
  { "Kanagawa Lotus",    "kanagawa-lotus" },
  { "Kanagawa Wave",     "kanagawa-wave" },
  { "Onedark Dark",      "onedark" },
  { "Tokyonight Day",    "tokyonight-day" },
  { "Tokyonight Moon",   "tokyonight-moon" },
  { "Tokyonight Night",  "tokyonight-night" },
  { "Tokyonight Storm",  "tokyonight-storm" },
  { "Melange",           "melange" },
  { "Nordic",            "nordic" },
  { "Rose Pine",         "rose-pine-main" },
  { "Rose Pine Moon",    "rose-pine-moon" },
  { "Rose Pine Dawn",    "rose-pine-dawn" },
  { "Poimandres",        "poimandres" },
  { "Sonokai",           "sonokai" },
  { "Edge",              "edge" },
  ]] --
}


for _, theme in ipairs(themes) do
  theme.name = theme[2]
  theme.colorscheme = theme[3]
end

themery.setup({
  themes = themes,
  livePreview = true,
  themeConfigFile = "~/.config/nvim/lua/theme.lua",
})
