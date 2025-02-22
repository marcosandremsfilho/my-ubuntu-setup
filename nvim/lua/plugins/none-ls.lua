return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black.with({
          extra_args = { "--line-length", "120" },
        }),
        null_ls.builtins.formatting.clang_format.with({
          extra_args = {
            "--style={BasedOnStyle: Google, IndentWidth: 2, ColumnLimit: 120}"
          },
        }),
      }
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end
}
