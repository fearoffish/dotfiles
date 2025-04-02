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
      yamlls = {
        -- Have to add this for yamlls to understand that we support line folding
        capabilities = {
          textDocument = {
            foldingRange = {
              dynamicRegistration = false,
              lineFoldingOnly = true,
            },
          },
        },
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.yaml.schemas =
            vim.tbl_deep_extend("force", new_config.settings.yaml.schemas or {}, require("schemastore").yaml.schemas())
        end,
        settings = {
          redhat = { telemetry = { enabled = false } },
          yaml = {
            keyOrdering = false,
            format = {
              enable = true,
            },
            validate = true,
            schemaStore = {
              -- Must disable built-in schemaStore support to use
              -- schemas from SchemaStore.nvim plugin
              enable = false,
              -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
              url = "",
            },
          },
        },
      },
    },
  },
}
