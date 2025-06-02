return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup()
    local function map(lhs, rhs, opts)
      vim.keymap.set('n', lhs, rhs, opts or {})
    end
    map('<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add file to Harpoon' })
    map('<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon Quick Menu' })
    map('<M-q>', function()
      harpoon:list():select(1)
    end, { desc = 'Go to Harpoon File 1' })
    map('<M-w>', function()
      harpoon:list():select(2)
    end, { desc = 'Go to Harpoon File 2' })
    map('<M-e>', function()
      harpoon:list():select(3)
    end, { desc = 'Go to Harpoon File 3' })
    map('<M-r>', function()
      harpoon:list():select(4)
    end, { desc = 'Go to Harpoon File 4' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
