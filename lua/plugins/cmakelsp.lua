return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        neocmake = false,
        cmake = {},
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "cmake-language-server" } },
  },
}
