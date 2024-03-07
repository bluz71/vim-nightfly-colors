-- Bootstrap and install lazy.nvim as the Neovim plugin manager.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Bootstrapping lazy.nvim, please wait until installation is finished")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")

-- Configuration.
local configuration = {
  install = {
    colorscheme = { "nightfly" },
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip", "netrwPlugin", "rplugin", "tarPlugin", "tohtml", "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    border = "single",
  },
}

-- Plugins.
lazy.setup({
  -----------------------------
  -- Colorscheme plugins
  -----------------------------
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },

  -----------------------------
  -- Style plugins
  -----------------------------
  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    config = function()
      require("config.devicons")
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufReadPre",
    config = function()
      require("config.indent-blankline")
    end,
  },

  -----------------------------
  -- Fuzzy finding plugins
  -----------------------------
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = { "<Space>" },
    config = function()
      require("config.telescope")
    end,
  },

  -----------------------------
  -- Filesystem plugins
  -----------------------------
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      {
        "s1n7ax/nvim-window-picker",
        version = "2.*",
        config = function()
          require("config.window-picker")
        end,
      },
    },
    event = "VeryLazy",
    config = function()
      require("config.neo-tree")
    end,
  },

  -----------------------------
  -- Treesitter plugins
  -----------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.1",
    -- commit = "f2778bd",
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
      { "RRethy/nvim-treesitter-endwise", name = "nvim-ts-endwise" },
    },
    event = "BufReadPost",
    config = function()
      require("config.treesitter")
    end,
  },

}, configuration)
