local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'gopls',
    'bufls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<A-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<A-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<Enter>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

local lspkind = require('lspkind')
cmp.setup({
    formatting = { 
        format = lspkind.cmp_format({
            with_text=true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                path = "[path]",
            }
        }), 
    },
    experimental = {
        native_menu = false,
        ghost_text = true
    },
    matching = {
        disallow_fuzzy_matching = true,
    },
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	local opns = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
	vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)

    -- dieagnostics
	vim.keymap.set("n", "gdo", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "gdn", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "gdN", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "gdd", '<cmd>Telescope diagnostics<CR>', opts)
    --vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })

	--vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<Leader><Enter>", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>",function() vim.lsp.buf.signature_help() end, opts)

    vim.diagnostic.config({
        virtual_text = {
            -- source = "always",  -- Or "if_many"
            prefix = '▎', -- Could be '■', '▎', 'x'
        },
        severity_sort = true,
        float = {
            source = "always",  -- Or "if_many"
        },
    })
end)

lsp.setup()
