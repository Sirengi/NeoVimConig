local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
--Навигатор
    {
    	"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
      		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    		}
	},
--Подсветка Синтаксиса
	{'nvim-treesitter/nvim-treesitter'},

--LSP
    {'neovim/nvim-lspconfig'},

--Mason
    {'williamboman/mason.nvim'},

--Lualine
    {'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }},

--Автодополнение
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
},
--Телескоп
{
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

--Тема	
	{'rebelot/kanagawa.nvim'}

})
--Конфиги

	require('plugins.treesitter.conf')
	require('plugins.lsp.conf')
	require('plugins.cmp.conf')
	require('plugins.telescope.conf')
	require('plugins.mason.conf')
	require('plugins.lualine.conf')
