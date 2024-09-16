return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<A-1>", "<Cmd>1ToggleTerm<Cr>", desc = "Terminal #1" },
    { "<A-2>", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    { "<A-3>", "<Cmd>3ToggleTerm<Cr>", desc = "Terminal #3" },
    { "<A-4>", "<Cmd>4ToggleTerm<Cr>", desc = "Terminal #4" },
    { "<A-5>", "<Cmd>5ToggleTerm<Cr>", desc = "Terminal #5" },
    { "<A-6>", "<Cmd>6ToggleTerm<Cr>", desc = "Terminal #6" },
  },
  cmd = { "ToggleTerm", "TermExec" },
  opts = {
    size = 13,
    hide_numbers = true,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.3,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
}
