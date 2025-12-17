local builtin = require("telescope.builtin")
local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")

vim.keymap.set("n", "<C-t>", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

-- Enable telescope fzf native, if installed
pcall(require("telescope").load_extension, "fzf")

-- See `:help telescope.builtin
vim.keymap.set("n", "<leader><space>", function()
	local opts = require("telescope.themes").get_ivy()
	require("telescope.builtin").oldfiles(opts)
end)

vim.keymap.set("n", "<leader>b", function()
	local opts = require("telescope.themes").get_ivy()
	require("telescope.builtin").buffers(opts)
end)

vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "[G]it [S]status" })
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "[G]it [F]iles" })

-- uncommment when multigrep is finished
-- require("config.telescope.multigrep").setup()

--local m = {}

-- m.my_buffer = function()
-- builtin.buffers {
-- 	attach_mappings = function(prompt_bufnr, map)
-- 		local delete_buf = function()
-- 			local selection = action_state.get_current_selection()
--
-- 			actions.close(prompt_bufnr)
--
-- 			vim.api.nvim_buf_delete(selection.bufnr, { force = true })
-- 		end
--
-- 		map('n', 'd', delete_buf)
-- 	end
-- }
-- end
--
--
-- vim.keymap.set('n', '<leader>/', function()
-- 	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
-- 		winblend = 10,
-- 		previewer = false,
-- 	})
-- end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set("n", "<leader>f", function()
	local opts = require("telescope.themes").get_ivy({ desc = "Search [F]iles" })
	require("telescope.builtin").find_files(opts)
end)
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })

vim.keymap.set("n", "<leader>sg", function()
	require("telescope").extensions.live_grep_args.live_grep_args()
end, { desc = "[S]earch by [G]rep" })

vim.keymap.set("n", "<C-f>", function()
	local opts = require("telescope.themes").get_ivy({ desc = "Search by Grep" })
	require("telescope").extensions.live_grep_args.live_grep_args(opts)
end)

vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").registers, { desc = "[S]earch [R]egistesr" })
-- vim.keymap.set('n', '<C-b>',  require('telescope.actions').delete_buffer, { desc = 'Delete buffer' })
