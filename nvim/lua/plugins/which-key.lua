return {
  "folke/which-key.nvim",
  keys = function()
    return {
      { "<leader>ta", "<cmd>:Other<cr>", desc = "Open Alternative File" },
      { "<leader>tv", "<cmd>:OtherVSplit<cr>", desc = "Open Alternative File in Vertical Split" },
      { "<leader>th", "<cmd>:OtherSplit<cr>", desc = "Open Alternative File in Split" },
    }
  end,
}
