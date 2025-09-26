local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', function()
	local opts = require('telescope.themes').get_ivy()
	require('telescope.builtin').buffers(opts)
end)

-- vim.keymap.set('n', '<leader>/', function()
-- 	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
-- 		winblend = 10,
-- 		previewer = false,
-- 	})
-- end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>f', function()
	local opts = require('telescope.themes').get_ivy({ desc = 'Search [F]iles' })
	require('telescope.builtin').find_files(opts)
end)
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<C-f>', function()
	local opts = require('telescope.themes').get_ivy( {desc = 'Search by Grep'} )
	require('telescope.builtin').live_grep(opts)
end)
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').registers, { desc = '[S]earch [R]egistesr' })
