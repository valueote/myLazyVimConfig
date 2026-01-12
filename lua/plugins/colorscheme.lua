local palette = {
  bg = "#faf9f5",
  fg = "#101010",
  line = "#ebebeb",
  paren = "#d7d7d7",
  dim = "#808080",
  comment = "#969ba5",
  border = "#000000",
  emphasis = "#000000",
  string = "#407f00",
  const = "#53230b",
  highlight = "#006acf",
  info = "#0253be",
  success = "#407f00",
  warning = "#b07700",
}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "latte", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      float = {
        transparent = false, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
      },
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
          ok = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
          ok = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },
      color_overrides = {
        latte = {
          -- Background layers (see Catppuccin style-guide)
          base = palette.bg,
          mantle = "#f3f2ee",
          crust = palette.line,

          -- Surface elements / UI blocks
          surface0 = "#f0efea",
          surface1 = palette.line,
          surface2 = palette.paren,

          -- Typography
          text = palette.fg,
          subtext1 = "#2f2f2f",
          subtext0 = "#4a4a4a",

          -- Overlays (comments/linenr/selection guidance)
          overlay2 = palette.comment,
          overlay1 = "#a2a6af",
          overlay0 = "#b8bcc4",

          -- Accents (kept consistent with your palette semantics)
          mauve = "#303030", -- keywords
          blue = "#000000", -- functions/links
          sapphire = palette.info,
          green = palette.string, -- strings/success
          peach = palette.const, -- static method for cpp
          yellow = "#63470f", -- types/warnings
          red = "#ca0043", -- errors
          maroon = "#000000", -- function parameters
          lavender = "#4e4737", -- variables name
          -- Extended accents (not in your base palette, added in same "soft-but-ink" style)
          rosewater = "#d8a08f",
          flamingo = "#d07a7a",
          pink = "#c76aa5",
          teal = "#1f7a6b",
          sky = "#47626d",
        },
      },
      custom_highlights = {},
      default_integrations = true,
      auto_integrations = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
