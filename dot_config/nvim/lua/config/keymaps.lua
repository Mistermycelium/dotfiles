-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <leader>Pt to telescope builtins using recordings
vim.keymap.set("n", "<leader>Pt", function()
  require("telescope.builtin").builtin()
end, { noremap = true, silent = true, desc = "Telescope" })
