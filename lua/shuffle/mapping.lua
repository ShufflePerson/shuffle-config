vim.g.mapleader = ' ';


local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
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
vim.cmd(":command! T FloatermNew")
vim.cmd(":command! Comp FloatermNew --autoclose=0 gcc % -o %< && ./%<")


vim.cmd("tnoremap <Esc> <C-\\><C-n>")

--New windows, quit windows
vim.keymap.set('n', 'n', ':vsp<CR>', { noremap = true })
vim.keymap.set('n', 'N', ':sp<CR>', { noremap = true })
vim.keymap.set('n', 'Q', ':q<CR>', { noremap = true })

--Shift arrows
vim.keymap.set('n', '<S-Left>', '<C-Left>', { noremap = true })
vim.keymap.set('n', '<S-Right>', '<C-Right>', { noremap = true })
vim.keymap.set('n', '<S-Up>', '<C-Up>', { noremap = true })
vim.keymap.set('n', '<S-Down>', '<C-Down>', { noremap = true })

--Ctrl arrows
vim.keymap.set('n', '<C-b>', '<C-v>', { noremap = true })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { noremap = true })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { noremap = true })


--Terminal

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
