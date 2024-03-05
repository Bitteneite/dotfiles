-- Melange: Le Browne Theme
return {

	-- GitHub URL
	"savq/melange-nvim", 
	name = "melange", 
	priority = 1000,
	
	-- Start + Config
	config = function()
		vim.cmd.colorscheme 'melange'
	end,

}