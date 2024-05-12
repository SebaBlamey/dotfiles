local status, lorem = pcall(require, "lorem")
if not status then
  return
end

lorem.setup({
  sentenceLength = "mixedShort",
  comma = 0.1
})
