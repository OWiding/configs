local map = vim.keymap.set

-- Custom bindings from the old setup could not be recovered; add them here.

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save" })
map("n", "<C-s>", "<cmd>write<CR>", { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit" })

map("n", "<A-Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<A-S-Tab>", "<cmd>bprev<CR>", { desc = "Previous buffer" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close buffer" })
map("n", "<leader>X", "<cmd>bdelete!<CR>", { desc = "Close buffer without saving" })

map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

map("n", "<leader>gg", function()
  vim.cmd("tabnew | terminal lazygit")
  vim.cmd("startinsert")
end, { desc = "Lazygit" })

map("n", "<leader>cj", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next issue" })
map("n", "<leader>ck", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous issue" })
