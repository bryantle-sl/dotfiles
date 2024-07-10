require("bryant.remap")
require("bryant.set")
require("bryant.lazy_init")

local augroup = vim.api.nvim_create_augroup
local BryantGroup = augroup('BryantGroup', {})

local autocmd = vim.api.nvim_create_autocmd

-- Override only on current buffer
autocmd('LspAttach', {
    group = BryantGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end
})
