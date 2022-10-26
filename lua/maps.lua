vim.g.mapleader = ";"

local keymap = vim.keymap

keymap.set("n", "<leader>q", "<Cmd>q<CR>")
keymap.set("n", "<leader>w", "<Cmd>w<CR>")

keymap.set("n", "<C-i>", "<C-a>")
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("i", "<leader><leader>", "<Esc>")  -- use ";;" to escape in insert mod 
keymap.set("v", "<leader><leader>", "<Esc>")  -- use ";;" to escape in visual mod 

keymap.set("n", "S", "0")
keymap.set("n", "<leader>v", "<C-v>")

keymap.set("n", "<leader>ss", ":vsplit<Return><C-w>w", {silent = true})

keymap.set("n", "f", "<C-w>w")
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>sj", "<C-w>j")
keymap.set("n", "<leader>sk", "<C-w>k")
keymap.set("n", "<leader>sl", "<C-w>l")

keymap.set("n", "<leader>s<left>", "<C-w><")
keymap.set("n", "<leader>s<right>", "<C-w>>")
keymap.set("n", "<leader>s<up>", "<C-w>+")
keymap.set("n", "<leader>s<down>", "<C-w>-")
