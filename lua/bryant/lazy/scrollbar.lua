local colors = require("bryant.lazy.colors")

local lighter_bg_highlight = "#333856"

return {
    "petertriho/nvim-scrollbar",  -- Plugin name as a string value
    dependencies = { 'tiagovla/tokyodark.nvim' },
    config = function()
        require("scrollbar").setup({
            folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
            max_lines = false, -- disables if no. of lines in buffer exceeds this
            hide_if_all_visible = false, -- Hides everything if all lines are visible
            handle = {
                color = lighter_bg_highlight,
            },
            marks = {
                Search = { color = colors.orange },
                Error = { color = colors.error },
                Warn = { color = colors.warning },
                Info = { color = colors.info },
                Hint = { color = colors.hint },
                Misc = { color = colors.purple },
            },
            render_at_end = true,
        })
    end
}
