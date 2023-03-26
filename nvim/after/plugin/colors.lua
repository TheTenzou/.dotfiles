require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
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
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        harpoon = true, 
        dap = true,
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

require('onenord').setup({
  theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- Style that is applied to various groups: see `highlight-args` for options
  styles = {
    comments = "NONE",
    strings = "NONE",
    keywords = "NONE",
    functions = "NONE",
    variables = "NONE",
    diagnostics = "underline",
  },
  disable = {
    background = true, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = true, -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = false,
  },
  custom_highlights = {}, -- Overwrite default highlight groups
  custom_colors = {}, -- Overwrite default colors
})

function ColorMyPencils(color)

	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

--	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "none"})

--vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = "none"})
--vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "none"})
--vim.api.nvim_set_hl(0, "NeoGitHunkHeader", { bg = "none"})

--	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NvimtreeCursorLine", { bg = "none"})


end

ColorMyPencils()

