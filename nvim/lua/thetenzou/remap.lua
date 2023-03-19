vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "$")
vim.keymap.set("n", "<leader>b", "^")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pt", ":NvimTreeToggle<cr>")

vim.keymap.set("n", "<leader>q", ":bd<cr>")
--vim.keymap.set("n", "<leader>q", ":q<cr>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- vim
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")

vim.keymap.set("n", "<leader>wv", ":sp<cr>", { silent = true })
vim.keymap.set("n", "<leader>wx", ":vs<cr>", { silent = true })
vim.keymap.set("n", "<leader>wc", "<C-w>c")
vim.keymap.set("n", "<leader>wh", "<C-w>_")
vim.keymap.set("n", "<leader>ww", "<C-w>|")
vim.keymap.set("n", "<leader>w=", "<C-w>=")

vim.keymap.set("n", "<C-h>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<C-l>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<C-k>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<C-j>", ":resize -2<cr>", { silent = true })

vim.keymap.set("n", "<leader>wt", ":tabnew<cr>", { silent = true})
vim.keymap.set("n", "<Left>", "gT")
vim.keymap.set("n", "<Right>", "gt")
vim.keymap.set("n", "<A-h>", "gT")
vim.keymap.set("n", "<A-l>", "gt")
