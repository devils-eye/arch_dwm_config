lvim.plugins = {
  { 'codota/tabnine-nvim', build = "./dl_binaries.sh" },
  {'norcalli/nvim-colorizer.lua'},
  {'mattn/emmet-vim'},
  {'Mofiqul/dracula.nvim'},

  -- Setting up local llm
  {
    'David-Kunz/gen.nvim',
    even = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
  },
  --------------
  --------------
  {'vonheikemen/fine-cmdline.nvim'},
  {'MunifTanjim/nui.nvim'},
  --------------
  --------------
  -- -- setting up chatgpt
  -- {
  --   "dreamsofcode-io/chatgpt.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --       "MunifTanjim/nui.nvim",
  --       "nvim-lua/plenary.nvim",
  --       "nvim-telescope/telescope.nvim"
  --   },
  --   config = function()
  --     require("chatgpt").setup({
  --       async_api_key_cmd = "pass show openai/chatNvim",
  --     })
  --   end,
  -- },
}
