return {
	"lewis6991/gitsigns.nvim",
	opts = {

		current_line_blame = false,
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map('n', '<leader>n', function()
				if vim.wo.diff then return '<leader>n' end
				vim.schedule(function() gs.next_hunk() end)
				return '<Ignore>'
			end, { expr = true })

			map('n', '<leader>N', function()
				if vim.wo.diff then return '<leader>N' end
				vim.schedule(function() gs.prev_hunk() end)
				return '<Ignore>'
			end, { expr = true })

			-- Actions
			map({ 'n', 'v' }, '<leader>ghs', ':Gitsigns stage_hunk<CR>')
			map({ 'n', 'v' }, '<leader>ghr', ':Gitsigns reset_hunk<CR>')
			map('n', '<leader>ghS', gs.stage_buffer)
			map('n', '<leader>gha', gs.stage_hunk)
			map('n', '<leader>ghu', gs.undo_stage_hunk)
			--map('n', '<leader>hR', gs.reset_buffer)
			map('n', '<leader>ghp', gs.preview_hunk)
			map('n', '<leader>ghb', function() gs.blame_line { full = true } end)
			--map('n', '<leader>tb', gs.toggle_current_line_blame)
			--map('n', '<leader>hd', gs.diffthis)
			map('n', '<leader>ghD', function() gs.diffthis('~') end)
			map('n', '<leader>ghd', gs.toggle_deleted)

			-- Text object
			--map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
		end
	}
}
