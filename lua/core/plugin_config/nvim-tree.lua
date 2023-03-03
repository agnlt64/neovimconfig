vim.g.loaded_netrw = 1
vim.g.loaded_newtrPlugin = 1

require("nvim-tree").setup({
renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
