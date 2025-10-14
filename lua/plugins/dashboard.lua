return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        dashboard = {
            -- your dashboard configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below

            sections = {
                -- Dummy spacing
                {
                    pane = 1,
                    section = "terminal",
                    cmd = "kotofetch",
                    height = 9,
                    padding = 1,
                },
                {
                    pane = 2,
                    section = "terminal",
                    cmd = [[
                    shuf -n 1 ~/dev/spell.txt | awk '{
                        for (i=1; i<=60; i++) {
                          c = substr($0, (i-1)%length($0)+1, 1)
                          v = index("abcdefghijklmnopqrstuvwxyz", tolower(c))
                          printf("%d ", (v ? v : 0))
                        }
                        print ""
                      }' | sparkly
                    ]],
                    height = 1,
                    padding = 2,
                },
                -- the chafa img
                {
                    pane = 1,
                    section = "terminal",
                    cmd =
                    "chafa ~/.config/images/snow1.png --format symbols --symbols vhalf --size 60x17 --stretch --probe off; sleep .1",
                    height = 16,
                    padding = 0,
                },
                -- the keys
                {
                    section = "keys",
                    gap = 0,
                    padding = 2,
                    pane = 2,
                    title = "Keys",
                    icon = "󰌌"
                },
                -- recent_files
                {
                    pane = 2,
                    icon = " ",
                    title = "Recent Files",
                    section = "recent_files"
                    ,
                    indent = 2,
                    padding = 2,
                    gap = 0
                },
                --project
                {
                    pane = 2,
                    icon = " ",
                    title = "Projects",
                    section = "projects",
                    indent = 2,
                    padding = 2,
                    gap = 0
                },
            },
        }
    }
}
