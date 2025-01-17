-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use ('wbthomason/packer.nvim')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use { "catppuccin/nvim", as = "catppuccin" }
    use { "Mofiqul/vscode.nvim", as = "vscode" }

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ('ryanoasis/vim-devicons')
    use ('stevearc/dressing.nvim')
    use ('hrsh7th/nvim-cmp')
    -- use ('nvim-tree/nvim-tree.lua')
    -- use ('nvim-tree/nvim-web-devicons')
    use ('jiangmiao/auto-pairs')
    use ('folke/zen-mode.nvim')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- mason config
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
end)
