-- if true then
--   return {}
-- end
-- local lspconfig = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        mason = false,
        cmd = { "mise", "x", "-E", "neovim", "--", "solargraph", "stdio" },
        -- root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
      ruby_lsp = {
        mason = false,
        cmd = { "mise", "x", "-E", "neovim", "--", "ruby-lsp" },
        -- root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
      rubocop = {
        mason = false,
        -- cmd = { "rubocop", "--lsp" },
        cmd = { "mise", "x", "-E", "neovim", "--", "rubocop" },
        -- root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
    },
  },
}
