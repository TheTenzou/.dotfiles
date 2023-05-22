-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use 'nvim-lua/popup.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-media-files.nvim'


    -- themes 
    use 'AlexvZyl/nordic.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'rmehri01/onenord.nvim'

    -- quality of life 
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'numToStr/Comment.nvim'
    use 'onsails/lspkind.nvim'
    use 'github/copilot.vim'

    -- lsp and treesitter requird for autocomplite 
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release', -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
        config = function()
            require('gitsigns').setup()
        end
    }

    -- use "Pocco81/auto-save. nvim"
    use "zoriya/auto-save.nvim"

    -- debug
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'leoluz/nvim-dap-go'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'

    -- api clients
    use {
        "hudclark/grpc-nvim",
        requires = { "nvim-lua/plenary.nvim" }
    } 

    use {
        "rest-nvim/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }
end)
