
vim.g.mapleader = " "

vim.keymap.set({"n", "v"}, "<leader>e", "$")
vim.keymap.set({"n", "v"}, "<leader>b", "^")
vim.keymap.set("n", "/", ":set hlsearch<cr>/")
vim.keymap.set("n", "<leader>/", ":let @/ = \"\"<cr>")

vim.keymap.set("c", "<A-m>", "\\(.*\\)")

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
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")

vim.keymap.set("n", "<leader>wx", ":sp<cr>", { silent = true })
vim.keymap.set("n", "<leader>wv", ":vs<cr>", { silent = true })
vim.keymap.set("n", "<leader>wc", "<C-w>c")
vim.keymap.set("n", "<leader>wh", "<C-w>_")
vim.keymap.set("n", "<leader>ww", "<C-w>|")
vim.keymap.set("n", "<leader>w=", "<C-w>=")

vim.keymap.set("n", "<A-J>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<A-L>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<A-K>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<A-J>", ":resize -2<cr>", { silent = true })
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<S-Up>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<S-Down>", ":resize -2<cr>", { silent = true })

vim.keymap.set("n", "<leader>wt", ":tabnew<cr>", { silent = true})
vim.keymap.set("n", "<Left>", "gT")
vim.keymap.set("n", "<Right>", "gt")
vim.keymap.set("n", "<A-h>", "gT")
vim.keymap.set("n", "<A-l>", "gt")


vim.keymap.set("i", "<Tab>", function()
    print(vim.b._copilot_completion)
    if vim.b._copilot_completion ~= nil then
        vim.cmd("call copilot#Accept()")
    else
        vim.cmd("call copilot#Suggest()")
    end
end, { silent = true})

--vim.g.copilot_assume_mapped = true
-- vim.keymap.set('i', '<Tab>', '<Plug>(copilot-suggest)')
--vim.keymap.set('i', '<S->', '<Plug>(copilot-dismiss)')
--vim.keymap.set('i', '<Tab>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
--vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h')
