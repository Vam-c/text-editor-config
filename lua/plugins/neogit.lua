return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
    config = function()
        require('neogit').setup({
            kind = 'vsplit',
            integrations = { diffview = true },
        });

        vim.keymap.set('n', '<leader>g', '<cmd>Neogit<CR>');
    end,
}

