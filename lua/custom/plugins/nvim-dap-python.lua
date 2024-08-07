return {

  'mfussenegger/nvim-dap-python',
  ft = 'python',
  dependencies = {
    'mfussenegger/nvim-dap-python',
    'mfussenegger/nvim-dap-ui',
  },
  config = function(_, opts)
    local path = '~/.pyenv/versions/debugpy/bin/python3.10'
    require('dap-python').setup(path)
  end,
}
