-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Show handy window information
vim.opt.winbar = "%=%m %f"

-- Fold information
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1000

-- LSP Server to use for Ruby.
-- Set to "solargraph" to use solargraph instead of ruby_lsp.
vim.g.lazyvim_ruby_lsp = "solargraph"
vim.g.lazyvim_ruby_formatter = "rubocop"

if vim.g.neovide then
  vim.o.guifont = "VictorMono Nerd Font Mono:h20" -- text below applies for VimScript

  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
