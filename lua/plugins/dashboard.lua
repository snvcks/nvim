return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        dashboard = {
            -- your dashboard configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            sections = {
                -- the chafa img
                {
                    pane = 1,
                    section = "terminal",
                    cmd = "chafa ~/.config/images/snow1.png --format symbols --symbols vhalf --size 60x17 --stretch --probe off; sleep .1",
                    height = 16,
                    padding = 0,
                },
                -- the keys 
                { section = "keys", gap = 1, padding = 1, pane = 2 },
                -- recent_files
                { pane = 3, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                --project 
                { pane = 3, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                -- git 
                {
                    pane = 3,
                    icon = " ",
                    title = "Git Status",
                    section = "terminal",
                    enabled = function()
                        return Snacks.git.get_root() ~= nil
                    end,
                    cmd = "git status --short --branch --renames",
                    height = 5,
                    padding = 1,
                    ttl = 5 * 60,
                    indent = 3,
                },
                { section = "startup" ,pane = 2},
            },
        }
    }
}
