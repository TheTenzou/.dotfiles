return {
	"Pocco81/auto-save.nvim",
	opts = {
		trigger_events = { "FocusLost" },
		print_enabled = true,
		condition = function(buf)
			local fn = vim.fn
			local utils = require("auto-save.utils.data")

			if
				fn.getbufvar(buf, "&modifiable") == 1 and
				utils.not_in(fn.getbufvar(buf, "&filetype"), { "gitcommit", "" }) then
				return true -- met condition(s), can save
			end
			return false -- can't save
		end,
		callbacks = {
			before_saving = function()
				print("before_saving")
				-- vim.lsp.buf.format()
			end
		}

	}
}
