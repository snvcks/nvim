
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- Get the actual theme that "auto" resolves to
		local lualine_require    = require("lualine.utils.loader")
		local auto_theme         = lualine_require.load_theme("auto")
        local palette = require('nordic.colors')
		-- -- set the colours
		auto_theme.normal.a.bg   =  palette.cyan.base
		auto_theme.normal.b.bg = palette.black0
		auto_theme.normal.c.bg = palette.grey1


		auto_theme.inactive.b.bg = palette.black0
		auto_theme.inactive.c.bg = palette.grey1
		auto_theme.insert.b.bg = palette.black0
		auto_theme.insert.c.bg = palette.grey1
		auto_theme.command.b.bg = palette.black0
		auto_theme.command.c.bg = palette.grey1
		auto_theme.visual.b.bg = palette.black0
		auto_theme.visual.c.bg = palette.grey1

		require("lualine").setup {
			options = {
				theme = auto_theme,
				component_separators = "",
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						separator = { left = "", right = "" },
						right_padding = 2,
					},
					"selectioncount",
				},
				lualine_b = {
					{
						"windows",
						windows_color = { active = "lualine_b_normal", inactive = "lualine_b_inactive" },
						symbols = { modified = " ●", alternate_file = "", directory = "" },
					},
				},
				lualine_c = { "lsp_status", "diagnostics" },
				lualine_x = {},
				lualine_y = { { "diff", colored = false }, "branch" },
				lualine_z = { { "datetime", separator = { left = "", right = "" }, left_padding = 2 } },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { function() return [[(･ ༝ ･)]] end, }
			},
			tabline = {
				lualine_a = {
					{
						function() return [[( • ) ( • )]] end,
						separator = { left = "", right = "" },
					},
				},
				lualine_b = { "searchcount", },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {
					{ "fileformat", symbols = { unix = "unix", dos = "dos", mac = "mac" } },
					"encoding",
					"filesize",
				},
				lualine_z = {
					"location",
					{ "progress", separator = { left = "", right = "" }, right_padding = 2 },
				},
			},
		}
	end
}
