vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true


vim.cmd [[packadd packer.nvim]]


require("transparent")

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.3', requires = { {'nvim-lua/plenary.nvim'} } }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
	 {'williamboman/mason.nvim'},
	 {'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'L3MON4D3/LuaSnip'},
      }
    }
    use({"nvim-tree/nvim-tree.lua"})
    use "xiyaowong/transparent.nvim"
    use "feline-nvim/feline.nvim"
    use "voldikss/vim-floaterm"
end)
