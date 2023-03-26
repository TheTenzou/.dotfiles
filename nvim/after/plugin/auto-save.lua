
require("auto-save").setup {
    condition = function(buf)
        local fn = vim.fn
        local fn = vim.fn
		local utils = require("auto-save.utils.data")

		if
			fn.getbufvar(buf, "&modifiable") == 1 and
			utils.not_in(fn.getbufvar(buf, "&filetype"), {"gitcommit"}) then
			return true -- met condition(s), can save
		end
		return false -- can't save
    end,
}


function FileType()
    local bufn = vim.fn.bufnr('%')
    print(bufn)
    local var = vim.fn.getbufvar(bufn, "&filetype")
    print(var)
end
