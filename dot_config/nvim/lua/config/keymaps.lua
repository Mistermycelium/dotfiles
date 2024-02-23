-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <leader>t to telescope builtins using recordings
vim.keymap.set("n", "<leader>tt", function()
  require("telescope.builtin").builtin()
end, { noremap = true, silent = true, desc = "Builtins" })
vim.keymap.set("n", "<leader>tl", function()
  require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Live Grep" })
vim.keymap.set("n", "<leader>th", function()
  require("telescope.builtin").help_tags()
end, { noremap = true, silent = true, desc = "Help Tags" })
vim.keymap.set("n", "<leader>tg", function()
  require("telescope.builtin").git_status()
end, { noremap = true, silent = true, desc = "Git Status" })
vim.keymap.set("n", "<leader>tc", function()
  require("telescope.builtin").git_commits()
end, { noremap = true, silent = true, desc = "Git Commits" })
vim.keymap.set("n", "<leader>ts", function()
  require("telescope.builtin").git_stash()
end, { noremap = true, silent = true, desc = "Git Stash" })
vim.keymap.set("n", "<leader>te", function()
  require("telescope.builtin").fd()
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
-- vim.keymap.set("n", "<leader>e", function()
--   require("oil").open_float()
-- end, { desc = "Open Oil" })

-- Remap <leader>e to open Telescope file_browser
-- vim.keymap.set("n", "<leader>e", function()
--   require("telescope.builtin").find_files()
-- end, { desc = "Open File Browser" })

-- Map Alt-J and Alt-K to move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- map arrow keys to

-- Map Alt-up and Alt-down to move visual lines up and down
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Visual line down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Visual line up" })
