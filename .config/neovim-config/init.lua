vim.g.mapleader = ' '
vim.map = vim.api.nvim_set_keymap

local folders = {
	'themes',
	'plugins',
	'functions',
}

require('options')

local disabled_plugins = {
	'onedark',
	'github-theme',
	-- 'vimbrains',
	'darcula',
	'green',
}

require('utils/lazy-config').load(folders, disabled_plugins)

vim.api.nvim_exec([[
  call ai_review#config({ 'chat_gpt': { 'model': 'gpt-3.5-turbo' } })
]], false)
