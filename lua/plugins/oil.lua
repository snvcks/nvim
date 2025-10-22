
return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-mini/mini.icons" },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
    })
    vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open Oil" })
  end,
}
