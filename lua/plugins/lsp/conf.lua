--Добавление серверов

local lspconfig = require('lspconfig')
--Lua
lspconfig.lua_ls.setup{}
--Rust
lspconfig.rust_analyzer.setup {
	['rust-analyzer'] = {
		diagnostics = {
			enable = true,
			experimental = {
				enable = true,
			},
		},
	},
}
