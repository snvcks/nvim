function ColorMyPencils(color)
	color = color or "sonokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        'sainnhe/sonokai',
          lazy = false,
          priority = 1000,
          config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.sonokai_enable_italic = true
            vim.g.sonokai_style = 'atlantis'
            vim.cmd.colorscheme('sonokai')
            ColorMyPencils();
            end
    },


}
