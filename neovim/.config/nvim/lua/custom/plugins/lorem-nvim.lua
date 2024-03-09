-- lorem.nvim: Generate text
return {

	-- GitHub URL
	"derektata/lorem.nvim", 
	
	-- Start + Config
	config = function()
		require('lorem').setup({
			sentenceLength = "mixedShort",
			comma = 0.1
		})
	end,

}