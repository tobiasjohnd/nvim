
vim.keymap.set("n", "<leader>nnn", function() vim.cmd.NnnPicker("%:p:h") end)

-- Quality of Life -------------------------------------------------------
vim.keymap.set("n", "<leader>x", ":!<Space>")
vim.keymap.set("n", "<leader><leader>", ":w<CR>")
vim.keymap.set("n", "<leader>so", ":source %<CR>")
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- yank and delete to system clipboard
vim.keymap.set({"n", "v"}, "Y", [["+y]])
vim.keymap.set({"n", "v"}, "D", [["+d]])

-- Quickfix and Diagnostics ----------------------------------------------
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- skill issue mediation ------------------------------------------------
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Git ------------------------------------------------------------------
vim.keymap.set("n", "<leader>gs", ":!git status<CR>")
vim.keymap.set("n", "<leader>gc", ":!git commit -m ''<Left><Left>")
vim.keymap.set("n", "<leader>gp", ":!git push<CR>")
vim.keymap.set("n", "<leader>gl", ":!git pull<CR>")
vim.keymap.set("n", "<leader>ga", ":!git add ")
vim.keymap.set("n", "<leader>ga%", ":!git add %<CR>")
vim.keymap.set("n", "<leader>gaa", ":!git add --all<CR>")
vim.keymap.set("n", "<leader>gau", ":!git add -u<CR>")
