-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.g.neovide_scale_factor = 0.8
-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
--   require("menu.utils").delete_old_menus()
--
--   vim.cmd.exec '"normal! \\<RightMouse>"'
--
--   -- clicked buf
--   local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
--   local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"
--
--   require("menu").open(options, { mouse = true })
-- end, {})

require "lazy_setup"
require "polish"
vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]])
