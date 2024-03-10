require("thetenzou")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-sleuth",
  { "christoomey/vim-tmux-navigator" },

  require "thetenzou.plugins.undotree",
  require "thetenzou.plugins.rainbow-delimeters",
  require "thetenzou.plugins.fugitive",
  require "thetenzou.plugins.auto-save",
  require "thetenzou.plugins.comment",
  require "thetenzou.plugins.gitsigns",
  require "thetenzou.plugins.fugitive",
  require "thetenzou.plugins.harpoon",
  require "thetenzou.plugins.comment",

  {
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require("which-key").setup()

      require("which-key").register({
        ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
        ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
        ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
        ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
        ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
      })
    end,
  },

  require "thetenzou.plugins.catppuccin",
  require "thetenzou.plugins.telescope",
  require "thetenzou.plugins.nvim-lspconfig",
  require "thetenzou.plugins.nvim-cmp",
  require "thetenzou.plugins.todo-coments",
  require "thetenzou.plugins.mini",
  require "thetenzou.plugins.treesitter",
  require "thetenzou.plugins.conform",
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
