return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require 'conform'
    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    }

    vim.keymap.set({ 'n' }, '<leader>t', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
        desc = { ' Run formatter ' },
      }
    end)
  end,
}
