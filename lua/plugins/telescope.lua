return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Tel: Find Files" })
            vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Tel: Git Files" })
            vim.keymap.set('n', '<leader>fg', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end, { desc = "Tel: Grep Files" })
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
