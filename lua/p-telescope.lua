local actions = require("telescope.actions")

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["esc"] = actions.close
      }
    }
  },
  layout_config={
    horizontal={
      preview_cutoff=100,
      preview_width = 0.6
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    file_browser={
      theme='dropdown',
      hijack_netrw = true,
      mappings={
        ['i']={
          ['<C-w>']=function() vim.cmd('normal vbd') end,
        },
        ['n']={
          ['h']=fb_actions.goto_parent_dir,
          ['/']=function() vim.cmd('startinsert') end,
        }
      }
    }
  }
}

require('telescope').load_extension('file_browser')

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>fb', '<cmd>lua require("telescope").extensions.file_browser.file_browser({path="%:p:h", cwd=telescope_buffer_dir(), respect_git_ignore=false, hidden=true})<CR>', opts)
