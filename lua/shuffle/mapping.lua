vim.g.mapleader = ' ';


local function map(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
	options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


vim.cmd(":command! W w")
vim.cmd(":command! Wq wq")
vim.cmd(":command! WQ wq")
vim.cmd(":command! WA wa")
vim.cmd(":command! WQA wqa")
vim.cmd(":command! Wqa wqa")
vim.cmd(":command! E NvimTreeOpen")

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
