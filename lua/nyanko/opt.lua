-- for brevity
local o = vim.opt

-- set language
if jit.os == "OSX" then
	vim.cmd("language en_US")
else
	vim.cmd("language en_US.utf8")
end

-- show line numbers
o.number = true

-- 80 column indicator
o.colorcolumn = "80"

-- enable mouse mode
o.mouse = "a"

-- dont show the mode since it's in lualine
o.showmode = false

-- faster updates
o.updatetime = 100

-- tabs
o.autoindent = true
o.smartindent = true
o.expandtab = false
o.tabstop = 4
o.shiftwidth = 4

-- indent wrapped lines of text
o.breakindent = true

-- save undo history
o.undofile = true

-- make search case insensitive unless \C or mixed-case is in the search
o.ignorecase = true
o.smartcase = true

-- keep sign column visible
o.signcolumn = "yes"

-- show which line the cursor is on
o.cursorline = true
