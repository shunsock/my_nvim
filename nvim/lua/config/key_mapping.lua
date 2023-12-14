-- set ; as leaderkey
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Escape from insert mode with jj
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })

-- Disable search highlighting with ESC ESC
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true, silent = true })

-- Key mapping for visual mode
vim.api.nvim_set_keymap("v", "<S-K>", "y<Esc>P", { noremap = true, silent = true })

-------------------------
-- nvim-tree.lua plugin --
-------------------------
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {silent=true})


------------------------
-- telescope plugin --
------------------------
vim.keymap.set("n", "<leader>ff", ":Telescope find_files", {})

vim.keymap.set("n", "<Leader><C-f>", ":Telescope find_files hidden=true<CR>", {})

