function ColorMyPencils(color)

	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
	vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = "none"})
	vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "none"})

--vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = "none"})
--vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "none"})
--vim.api.nvim_set_hl(0, "NeoGitHunkHeader", { bg = "none"})

	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"})
	vim.api.nvim_set_hl(0, "NvimtreeCursorLine", { bg = "none"})


end

ColorMyPencils()
