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
