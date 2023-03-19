local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    str = vim.fn.input("Grep > ")
    print(str)
	builtin.grep_string({ search = str })
end)

local actions = require("telescope.actions")

require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ["<leader>wh"] = actions.select_horizontal,
                ["<leader>wv"] = actions.select_vertical,
                ["<leader>wt"] = actions.select_tab,

                ["<leader>l"] = actions.send_to_qflist + actions.open_qflist,
                ["<leader>sl"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
        }
    }
}

