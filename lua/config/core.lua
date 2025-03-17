-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- Enable break indent
vim.o.breakindent = true

-- No swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
-- Save undo history
vim.o.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Open splits on the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- update vim after file update from outside
vim.opt.autoread = true

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Always use spaces insted of tabs
vim.opt.expandtab = true

-- Don't wrap lines
vim.opt.wrap = false
-- Wrap lines at convenient points
vim.opt.linebreak = true
-- Show line breaks
vim.opt.showbreak = "↳"

-- Start scrolling when we'are 8 lines aways from borders
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 5

-- This makes vim act like all other editors, buffers can
-- exist in the background without being in a window.
vim.opt.hidden = true

-- Add the g flag to search/replace by default
vim.opt.gdefault = true

-- Lazy redraw
vim.o.lazyredraw = true
-- KEYMAPS --
-- Space should not move cursor
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Move normally between wrapped lines
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move to first and last symbol on the line
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Quick jumping between splits
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("i", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("i", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("i", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("i", "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l")

-- Clear highlights
vim.keymap.set("n", "<Leader>h", ":noh<CR>", { silent = true })

-- Pasting yanks selected text to different register.
vim.keymap.set("v", "p", '"_dP')

-- Go to lsp definitions.
vim.keymap.set("n", "gd", "<C-]>")

