local map = function(mode, lhs, rhs, desc, opts)
	local local_opts = {noremap = true, silent = true}
	desc = desc or ""
	opts = opts or {}
	vim.tbl_deep_extend("force", local_opts, opts)
	vim.keymap.set(mode, lhs, rhs, local_opts)
end

local nmap = function(lhs, rhs, desc, opts)
	map("n", lhs, rhs, desc, opts)
end

local imap = function(lhs, rhs, desc, opts)
	map("i", lhs, rhs, desc, opts)
end

local object = {}
object.map = map
object.nmap = nmap
object.imap = imap

return object
