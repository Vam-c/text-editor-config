return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}

        -- Keybinds.
        vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<CR>')
    end,
}
