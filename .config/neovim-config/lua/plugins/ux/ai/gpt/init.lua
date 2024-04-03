return {
	'thmsmlr/gpt.nvim',
	enabled = true,
	opts = { silent = true, noremap = true },
	config = function()
		require('gpt').setup({
			api_key = ''
		})
		vim.keymap.set('v', '<C-g>r', require('gpt').replace, {
			silent = true,
			noremap = true,
			desc = "[G]pt [R]ewrite"
		})
		vim.keymap.set('v', '<C-g>p', require('gpt').visual_prompt, {
			silent = false,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
		vim.keymap.set('n', '<C-g>p', require('gpt').prompt, {
			silent = true,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
		vim.keymap.set('n', '<C-g>c', require('gpt').cancel, {
			silent = true,
			noremap = true,
			desc = "[G]pt [C]ancel"
		})
		vim.keymap.set('i', '<C-g>p', require('gpt').prompt, {
			silent = true,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
	end,
}
