-- Set leader key
vim.g.mapleader = " "

-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
  print("Lazy.nvim installed successfully!")
end

vim.opt.rtp:prepend(lazypath)

-- Load settings (must be before plugin setup)
require("config.options")
require("config.keys")

-- Load plugins only from plugins/
require("lazy").setup({ { import = "plugins" } }, { checker = { enabled = true } })
