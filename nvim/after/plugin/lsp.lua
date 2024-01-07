local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
    lsp.set_sign_icons({
        error = "✘",
        warn = "▲",
        hint = "⚑",
        info = "»",
    })
end)

-- disable formatting for tsserver so it can be handled by prettier
require("lspconfig").tsserver.setup({
    on_init = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentFormattingRangeProvider = false
    end,
})
lsp.setup()
