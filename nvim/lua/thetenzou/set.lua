vim.o.termguicolors = true

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.mouse = "a"
vim.opt.showmode = false

vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split"

vim.opt.cursorline = true

vim.opt.hlsearch = true

--vim.opt.colorcolumn = "160"

vim.opt.fillchars:append({ eob = " " })


vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | silent! checktime | endif",
	pattern = { "*" },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = "set autoindent noexpandtab tabstop=4 shiftwidth=4",
})




