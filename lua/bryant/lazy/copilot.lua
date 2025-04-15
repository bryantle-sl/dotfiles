return {
    "github/copilot.vim",
    lazy = false,
    config = function()
        -- Make sure Copilot is enabled
        vim.g.copilot_enabled = true
        -- Enable for all filetypes
        vim.g.copilot_filetypes = {
            ["*"] = true,
        }

        -- Map Shift+Enter to accept Copilot suggestion
        vim.keymap.set('i', '<S-CR>', 'copilot#Accept("<CR>")', {
            expr = true,
            replace_keycodes = false
        })

        -- Optional: disable copilot's Tab mapping to avoid conflicts with nvim-cmp
        vim.g.copilot_no_tab_map = true
    end,
}

