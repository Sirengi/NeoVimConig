vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

--Создаёт горячую клавишу для нормального режима
function nm(key,command)
    map('n', key, command, {noremap = true})
end


--Создаёт горячую клавишу для режима ввода
function im(key,command)
    map('i', key, command, {noremap = true})
end


--Создаёт горячую клавишу для визуального режима
function vm(key,command)
    map('v', key, command, {noremap = true})
end


--Создаёт горячую клавишу для терминального режима
function tm(key,command)
    map('t', key, command, {noremap = true})
end


------------------------------------------------------------------------
--NeoTree
nm('<leader>t', '<cmd>Neotree toggle<CR>')
