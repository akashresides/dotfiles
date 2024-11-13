return {
  {
    "folke/flash.nvim",
    opts = {
      labels = "arstgmneioqwfpbjluyzxcdvkh",
      label = {
        rainbow = {
          enabled = true,
          -- number between 1 and 9
          shade = 8,
        },
      },
      modes = {
        char = { multi_line = false },
        highlight = { backdrop = false },
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "super-tab" },
      trigger = {
        signature_help = { enabled = true },
      },
      windows = {
        autocomplete = { selection = "auto_insert" },
      },
    },
  },
}
