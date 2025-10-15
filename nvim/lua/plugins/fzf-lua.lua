return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {},
	config = function()
		local fzf = require("fzf-lua")
		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "find files" })
		vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "live grep" })
		vim.keymap.set("n", "<leader>fc", function()
			fzf.files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "find in neovim config files" })
		vim.keymap.set("n", "<leader>fcg", function()
			fzf.live_grep({ cwd = vim.fn.stdpath("config") })
		end, { desc = "find in neovim config files with live grep" })
	end,
}
