return {
	"theprimeagen/harpoon",
	config = function()
		local makr = require("harpoon.mark")
		local ui = require("harpoon.ui")

		require("telescope").load_extension("harpoon")

		vim.keymap.set("n", "<leader>a", makr.add_file)
		vim.keymap.set("n", "<leader>t", '<cmd>Telescope harpoon marks<CR>')
		vim.keymap.set("n", "<leader>T", ui.toggle_quick_menu)


		--vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
		--vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
		--vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
		--vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
	end
}
