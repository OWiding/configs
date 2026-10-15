return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>bp", "<cmd>BufferLinePick<CR>", desc = "Pick buffer" },
    { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "Close other buffers" },
    { "<leader>bh", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
    { "<leader>bl", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<leader>bP", "<cmd>BufferLineTogglePin<CR>", desc = "Pin buffer" },
  },
  opts = {
    options = {
      mode = "buffers",
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
      separator_style = "thin",
      offsets = {
        { filetype = "NvimTree", text = "Explorer", text_align = "center", separator = true },
      },
    },
  },
}
