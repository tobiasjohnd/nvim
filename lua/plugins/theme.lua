return {
    {
	"Shatur/neovim-ayu",
	config = function()
	    local ayu = require("ayu")
	    ayu.setup({
		mirage =  false,
		overrides = {
		    Normal = { bg = "None"},
		}
	    })
	    ayu.colorscheme()
	end
    },
}
