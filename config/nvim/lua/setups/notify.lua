local status, notify = pcall(require, "notify")
if not status then
  return
end

notify.setup({
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
  render = "compact",
  stages = "slide",
  time_formats = {
    notification = "%T",
    notification_history = "%FT%T",
  },
  timeout = 3000,
  top_down = true,
})
