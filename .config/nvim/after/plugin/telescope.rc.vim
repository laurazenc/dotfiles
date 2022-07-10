

if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <silent> ;; <cmd>lua require('telescope.builtin').resume()<cr>
nnoremap <silent> ;e <cmd>lua require('telescope.builtin').diagnostics()<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
     vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--ignore-file',
      '.gitignore'
    },
    file_ignore_patterns = { "node_modules" },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF


