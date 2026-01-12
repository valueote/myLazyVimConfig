-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- lua/config/keymaps.lua

-- mini.files keymap
local mini_files_toggle = function(...)
  if not require("mini.files").close() then
    require("mini.files").open(...)
  end
end

vim.keymap.set("n", "<leader>e", function()
  mini_files_toggle(vim.fn.expand("%:h"), true)
end, { desc = "Toggle mini.files (directory of current file)" })

vim.keymap.set("n", "<leader>E", function()
  mini_files_toggle(vim.uv.cwd(), true)
end, { desc = "Toggle mini.files (cwd)" })

vim.keymap.set("n", "<leader>fm", function()
  mini_files_toggle(LazyVim.root(), true)
end, { desc = "Toggle mini.files (root)" })
