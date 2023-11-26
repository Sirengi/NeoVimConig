local opt = vim.opt
local wo = vim.wo
local g = vim.g


--Перенос

opt.wrap = false

--Табуляция
opt.expandtab = true	-- Замена Таба на пробелы
opt.shiftwidth = 4 -- количество пробелов для автоотступа
opt.tabstop = 4 -- На сколько пробелов заменён Таб
opt.smartindent = true -- Умный Автоотступ
opt.softtabstop = 4 --Удаление нескольких пробелов

--Буфер обмена
opt.clipboard = 'unnamedplus'

--Генерация SWAP-файла
opt.swapfile = false

--Очистка буфера при закрытии
opt.hidden = true

--Размер Истории
opt.history = 100

--Нумерация Строк
opt.number = true

--Относительная нумерация строк
opt.relativenumber = true
