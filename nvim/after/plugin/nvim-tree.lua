-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = false,
    hijack_netrw = false,
    view = {
        mappings = {
            custom_only = false,
            list = {
                { key = "<leader>v", action = "vsplit"},
                { key = "<leader>x", action = "split"},
                { key = "<leader>t", action = "tabnew"},
                { key = "<leader>r", action = "full_rename"},
                { key = "l", action = "edit", action_cb = edit_or_open },
                { key = "L", action = "vsplit_preview", action_cb = vsplit_preview },
                { key = "h", action = "close_node" },
                { key = "H", action = "collapse_all", action_cb = collapse_all }
            }
        }
    },
    actions = {
        open_file = {
            quit_on_open = false
        }
    }
})


vim.api.nvim_create_autocmd({"QuitPre"}, {
    callback = function() vim.cmd("NvimTreeClose") end,
})
