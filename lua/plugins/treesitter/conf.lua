require'nvim-treesitter.configs'.setup{
--Список языков
	ensure_installed = {"lua", "rust"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
