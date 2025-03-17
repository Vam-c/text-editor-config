return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    opts = { extensions_list = { "fzf"  } },
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        require('telescope').setup()

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope old files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope references' })
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope symbols' })
    end,
}
