-- set leader key
-- this has to happen before plugins load or it won't work
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("nyanko.opt")
require("nyanko.lazy_init")
