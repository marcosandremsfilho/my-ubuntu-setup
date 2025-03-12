return {
  'numToStr/Comment.nvim',
  lazy = false,
  config = function()
    require('Comment').setup({
      opleader = {
        ---Line-comment keymap
        line = 'cl',
        ---Block-comment keymap
        block = 'cb',
      },
    })
  end
}
