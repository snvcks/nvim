return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    preset = "helix"
  },
    keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
    triggers = {
   { "<auto>", mode = "nixsotc" },
   { "<C>", mode = { "n", "v" } },
   { "<S>", mode = { "n", "v" } },
 }
}
