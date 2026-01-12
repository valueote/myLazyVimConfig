return {
  "johnseth97/codex.nvim",
  lazy = true,
  cmd = { "Codex", "CodexToggle" },
  keys = {
    {
      "<leader>co",
      function()
        require("codex").toggle()
      end,
      desc = "Toggle Codex popup",
      mode = { "n", "t" },
    },
  },
  opts = {
    keymaps = {
      toggle = nil,
      quit = "<C-q>",
    },
    border = "rounded",
    width = 0.9,
    height = 0.9,
    cmd = { "codex", "resume" },
    autoinstall = true,
  },
}
