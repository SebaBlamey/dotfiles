return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      background_colour = "NotifyBackground",
      fps = 60,
      icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "✎",
        WARN = "",
      },
      level = 2,
      minimum_width = 50,
      render = "default",
      stages = "slide",
      time_formats = {
        notification = "%T",
        notification_history = "%FT%T",
      },
      timeout = 2000,
      top_down = true,
    })
  end,
}
