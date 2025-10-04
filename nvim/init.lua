require("nvim")

-- lsp config
vim.lsp.config("*", {
	root_markers = { ".git" },
})

vim.diagnostic.config({
	--virtual_lines = true,
})

vim.lsp.enable({ "pyright", "ts_ls", "stylua" })
