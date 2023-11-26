vim.opt.termguicolors = true


function SetColor(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
end

SetColor()
