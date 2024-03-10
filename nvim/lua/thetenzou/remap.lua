vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<leader>e", "$")
vim.keymap.set({ "n", "v" }, "<leader>b", "^")
vim.keymap.set("n", "/", ":set hlsearch<cr>/")
vim.keymap.set("n", "<leader>/", ':let @/ = ""<cr>')

vim.keymap.set("c", "<A-m>", "\\(.*\\)")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pt", ":NvimTreeToggle<cr>")

local function save_and_exit()
	local file_path = vim.fn.expand("%")
	if file_path == "" then
		vim.cmd(":q!") -- Just quit if the file doesn't exist
	end

	if vim.fn.filereadable(file_path) == 1 then
		vim.cmd(":wqa") -- Quit all windows if the file exists
	else
		vim.cmd(":q!") -- Just quit if the file doesn't exist
	end
end

-- vim.keymap.set({"n", "v", "i"}, "<A-e>", "<ESC>:wq<cr>")
vim.keymap.set({ "n", "v", "i" }, "<A-e>", save_and_exit)
vim.keymap.set("n", "<leader>q", ":bd<cr>")
--vim.keymap.set("n", "<leader>q", ":q<cr>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

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
vim.keymap.set("n", "<leader>wn", "<C-w>n")
vim.keymap.set("n", "<leader>wo", "<C-w>o")

vim.keymap.set("n", "<leader>wi", ":vs|term<cr>")

-- move buffers
vim.keymap.set("n", "<leader>wr", "<C-w>r")
vim.keymap.set("n", "<leader>wR", "<C-w>R")
vim.keymap.set("n", "<leader>wh", "<C-w>H")
vim.keymap.set("n", "<leader>wj", "<C-w>J")
vim.keymap.set("n", "<leader>wk", "<C-w>K")
vim.keymap.set("n", "<leader>wl", "<C-w>L")

vim.keymap.set("n", "<leader>wt", ":tabnew<cr>", { silent = true })
vim.keymap.set("n", "<Left>", "gT")
vim.keymap.set("n", "<Right>", "gt")
vim.keymap.set("n", "<A-h>", "gT")
vim.keymap.set("n", "<A-l>", "gt")

vim.keymap.set("n", "<A-J>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<A-L>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<A-K>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<A-J>", ":resize -2<cr>", { silent = true })
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<S-Up>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<S-Down>", ":resize -2<cr>", { silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
