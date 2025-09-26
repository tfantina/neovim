function GetPath()
	vim.fn.setreg('+', vim.fn.expand('%'))
end

vim.api.nvim_create_user_command('GetPath', GetPath, {})

vim.keymap.set('n', '<leader>cp', GetPath, { desc = 'Copy current file path to clipboard' })
