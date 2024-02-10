return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.formatting.prettier,
            },
        })

        vim.keymap.set("n", "<leader>fo", function()
            vim.lsp.buf.format({ async = true })
        end, {})
    end,
}
