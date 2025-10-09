vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Explorer"})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "format"})

vim.keymap.set("n", "<leader>e", function ()
    vim.diagnostic.open_float(0, {scope="line"})
end,{desc = "diagnostic"})
