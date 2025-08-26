-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
-- local is_bootstrap = false
-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
-- is_bootstrap = true
-- vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
-- vim.cmd [[packadd packer.nvim]]
--
--end

-- Only required if you have packer configured as `opt`
--vim.cmd.packadd('packer.nvim')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --telescope
 use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

    --theme
    --
    -- use ({
    --    'mhartington/oceanic-next',
    --    as = 'OceanicNext',
    --    config = function()
    --      vim.cmd('colorscheme OceanicNext')
    --    end
    --  })

    use { "theacodes/witchhazel" }

    --lsp & autocompletion
    use {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            'j-hui/fidget.nvim',

            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim',
        },
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    -- make the line prettier
    use('nvim-lualine/lualine.nvim')
    use('vim-airline/vim-airline')
    use('f-person/git-blame.nvim')
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')
    use('lewis6991/gitsigns.nvim')
    --:use 'nvim-treesitter/nvim-treesitter'

    -- Setup mason so it can manage external tooling
    -- require('mason').setup()

    -- Ensure the servers above are installed
    --local mason_lspconfig = require 'mason-lspconfig'

    -- mason_lspconfig.setup {
    --   ensure_installed = vim.tbl_keys(servers),
    -- }
    --
    -- mason_lspconfig.setup_handlers {
    --   function(server_name)
    --     require('lspconfig')[server_name].setup {
    --       capabilities = capabilities,
    --       on_attach = on_attach,
    --       settings = servers[server_name],
    --     }
    --   end,
    -- }




    --treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


    use("elixir-tools/elixir-tools.nvim", { tag = "stable", requires = { "nvim-lua/plenary.nvim" } })

    if is_bootstrap then
        require('packer').sync()
    end
end)
