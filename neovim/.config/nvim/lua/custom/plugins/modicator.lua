-- Modicator: Change relative number color
return {

	-- GitHub URL
	'mawkler/modicator.nvim',
	
	-- Start + Config
	config = function()
		require("modicator").setup()
	end,
		
	opts = {
		-- Warn if any required option above is missing. May emit false positives
		-- if some other plugin modifies them, which in that case you can just
		-- ignore. Feel free to remove this line after you've gotten Modicator to
		-- work properly.
		show_warnings = true,
	}
	
}

