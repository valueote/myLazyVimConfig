-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local osc52 = require("vim.ui.clipboard.osc52")

local function paste()
  -- 不向终端请求系统剪贴板，直接返回 nvim 当前寄存器，避免 timeout
  return { vim.fn.getreg('"', 1, true), vim.fn.getregtype('"') }
end

vim.g.clipboard = {
  name = "OSC52",
  copy = {
    ["+"] = osc52.copy("+"),
    ["*"] = osc52.copy("*"),
  },
  paste = {
    ["+"] = paste,
    ["*"] = paste,
  },
}
