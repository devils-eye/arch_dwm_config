-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

reload('plugins')

-- Setting transparency:
lvim.transparent_window = true

-- setting relative number always
vim.opt.relativenumber = true

-- setting word wrap by default
vim.opt.wrap = true

-- tabnine setup
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<A-CR>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TeslescopePrompt"},
  log_file_path = nil,
})
