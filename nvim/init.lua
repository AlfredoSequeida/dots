require("config.lazy")
require("config.set")
require("config.remap")

-- theme
vim.cmd([[colorscheme tokyonight-night]])

-- lsp config
vim.lsp.config("*", {
	root_markers = { ".git" },
})

vim.diagnostic.config({
	--virtual_lines = true,
})

vim.lsp.enable({ "ruff", "pyright", "ts_ls", "stylua" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "lua" },
	callback = function()
		vim.treesitter.start()
	end,
})
