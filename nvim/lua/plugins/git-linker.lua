return {
  "ruifm/gitlinker.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("gitlinker").setup({
      callbacks = {
        ["github.tools.sap"] = require("gitlinker.hosts").get_github_type_url,
      },
    })
  end,
  -- keys = {
  --   "<leader>gl",
  --   '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
  --   desc = "Link on GitHub",
  -- },
}