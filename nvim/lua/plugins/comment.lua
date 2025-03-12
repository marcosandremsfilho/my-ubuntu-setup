return {
  'numToStr/Comment.nvim',
  lazy = false,
  config = function()
    require('Comment').setup({
       toggler = {
        ---Line-comment toggle keymap
        line = 'cll',
        ---Block-comment toggle keymap
        block = 'cbb',
    },
      opleader = {
        ---Line-comment keymap
        line = 'cl',
        ---Block-comment keymap
        block = 'cb',
      },
    })
  end
}
