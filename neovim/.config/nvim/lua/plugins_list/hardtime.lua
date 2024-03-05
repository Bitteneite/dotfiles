-- Hardtime: Reduce HJKL usage
return {

	-- GitHub URL
	'm4xshen/hardtime.nvim',
	dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
	
	-- Start + Config
	config = function()
		require("hardtime").setup({
			restricted_keys = {
				["w"] = { "n", "x" },
				["W"] = { "n", "x" },
				["b"] = { "n", "x" },
				["B"] = { "n", "x" },
			},
			
			disable_mouse = false	-- Enable mouse
		})
		
		
		
	end
	
}

