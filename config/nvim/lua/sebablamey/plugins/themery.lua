return {
	"zaldih/themery.nvim",
	priority = 1000,
	lazy = false,

	config = function()
		require("themery").setup({
			themes = {
				{ name = "Catppuccin Frappe", colorscheme = "catppuccin-frappe" },
				{ name = "Catppuccin Latte", colorscheme = "catppuccin-latte" },
				{ name = "Catppuccin Macchiato", colorscheme = "catppuccin-macchiato" },
				{ name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },
				{ name = "Gruvbox", colorscheme = "gruvbox" },
				{ name = "Tokyonight Day", colorscheme = "tokyonight-day" },
				{ name = "Tokyonight Moon", colorscheme = "tokyonight-moon" },
				{ name = "Tokyonight Night", colorscheme = "tokyonight-night" },
				{ name = "Tokyonight Storm", colorscheme = "tokyonight-storm" },
				{ name = "Ayu Dark", colorscheme = "ayu-dark" },
				{ name = "Ayu Light", colorscheme = "ayu-light" },
				{ name = "Ayu Mirage", colorscheme = "ayu-mirage" },
				{ name = "Duotone Sea Dark", colorscheme = "base2tone_sea_dark" },
				{ name = "Duotone Forest Dark", colorscheme = "base2tone_forest_dark" },
				{ name = "Duotone Space Dark", colorscheme = "base2tone_space_dark" },
				{ name = "Duotone Earth Dark", colorscheme = "base2tone_earth_dark" },
				{ name = "Nord", colorscheme = "nord" },
			},
			livePreview = true,
		})
	end,
}
