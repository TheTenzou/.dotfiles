local builtin = require('telescope.builtin')


-- searsh
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- lsp
vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>pws', function()
	builtin.lsp_workspace_symbols({ query = vim.fn.input("Workspace symbols > ") })
end, {})

-- git staff 
--vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gf', function()
    vim.fn.system('git rev-parse --is-inside-work-tree')
    if vim.v.shell_error == 0 then
        builtin.git_files()
    else
        print('not a git repo')
    end
end , {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gt', builtin.git_stash, {})

local actions = require("telescope.actions")

require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ["<leader>x"] = actions.select_horizontal,
                ["<leader>v"] = actions.select_vertical,
                ["<leader>t"] = actions.select_tab,

                ["<leader>l"] = actions.send_to_qflist + actions.open_qflist,
                ["<leader>sl"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
        }
    }
}

