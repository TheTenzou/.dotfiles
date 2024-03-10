require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = {         -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false,   -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = { "italic" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "italic" },
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {
        LineNr = { fg = "#6E738D", },
        StatusLine = { bg = "#2d3147", fg = "#a1a8c9" },
        StatusLineNC = { bg = "#2d3147", fg = "#6E738D" },
        NvimTreeStatuslineNc = { bg = "#2d3147", fg = "#6E738D" },
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        harpoon = true,
        treesitter = true,
        dap = {
            enabled = true,
            enable_ui = true, -- enable nvim-dap-ui
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

vim.cmd.colorscheme("catppuccin")
