return {
	"echasnovski/mini.pairs",
	version = false, -- use the latest version
	event = "InsertEnter", -- load only when you start typing
	opts = {
		-- modes where mappings should be created
		modes = { insert = true, command = false, terminal = false },
		-- Global mappings. Default includes (), [], {}, "", '', ``
		mappings = {
			-- Example: disable single quote pairing
			["'"] = false,
			-- Example: customize behavior for (
			["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
		},
	},
}
