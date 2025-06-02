return {
  'CRAG666/code_runner.nvim',
  ft = { 'python', 'javascript', 'typescript' },
  config = function()
    -- Set up code_runner.nvim
    require('code_runner').setup {
      filetype = {
        python = 'python3 -u',
        javascript = 'node',
        typescript = {
          'tsc $fileName && node $fileNameWithoutExt.js',
        },
      },
    }

    -- Map <leader>cr to run the current file
    vim.api.nvim_set_keymap('n', '<leader>cr', ':RunCode<CR>',
      { desc = 'Run Python code', noremap = true, silent = true })
    -- Map <leader>ct to toggle the runner window
    vim.api.nvim_set_keymap('n', '<leader>ct', ':RunClose<CR>',
      { desc = 'Closes the terminal', noremap = true, silent = true })
  end,
}

-- vim: ts=2 sts=2 sw=2 et
