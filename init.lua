require("config.lazy")
--
-- Keymaps for executing Lua by line or by the file
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Clears highlighted search when ESC is pressed
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

-- Center screen when scrolling 1/2 page up/down and searching
vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Go to oil
vim.keymap.set("n", "<space>pv", "<cmd>Oil<CR>")

-- Share system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set number and relative numbers on
vim.opt.number = true
vim.opt.relativenumber = true

-- Indenting and spacing options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Minimum # of lines above and below cursor
vim.opt.scrolloff = 8

-- Smart autoindenting for C programs
vim.opt.smartindent = true

-- Set vertical line at position 80
vim.opt.colorcolumn = "80"

-- Save undo information in a file
vim.opt.undofile = true

-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
	vim.highlight.on_yank()
    end,
})

