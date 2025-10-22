function ColorMyPencils(color)
	color = color or 'nordic'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        opts ={
            transparency ={
                bg = true
            },
            noice = {
                style = 'flat'
            }
        },
        config = function()
        require('nordic').load({})
            ColorMyPencils();
            end
    },


}
