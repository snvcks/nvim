require("jackie.remap")
require("jackie.set")
require("jackie.lazy")
require('overseer').setup(
    {templates = {"builtin","user.cpp_build"},

    }
)

local augroup = vim.api.nvim_create_augroup
local jackie_group = augroup('jackie', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = jackie_group,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {desc = "definition"})
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, {desc = "declaration"})
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {desc= "hover"})
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {desc = "workspace symbol"})
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, {desc="diagnostic"})
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, {desc="code action"})
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, {desc="references"})
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, {desc = "rename"})
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, {desc="signature help"})
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {desc = "go to next"})
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {desc = "go to prev"})
    end
})
