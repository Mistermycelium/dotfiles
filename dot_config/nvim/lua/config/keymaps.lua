-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <leader>Pt to telescope builtins using recordings
vim.keymap.set("n", "<leader>Pt", function()
  require("telescope.builtin").builtin()
end, { noremap = true, silent = true, desc = "Builtins" })
vim.keymap.set("n", "<leader>Pe", function()
  require("telescope.builtin").find_files()
end, { noremap = true, silent = true, desc = "Find Files" })

-- remap <C-d> and <C-u> to scroll the view
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search term in the middle of the screen" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search term in the middle of the screen" })

-- Paste without replacing clipboard
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without replacing clipboard" })

-- System copy
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "System copy" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "System copy line" })

-- Delete without replacing clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without replacing clipboard" })

-- Map <leader>r to replace word under cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Remap <leader>e to open oil
vim.keymap.set("n", "<leader>e", function()
  require("oil").open_float()
end, { desc = "Open Oil" })
