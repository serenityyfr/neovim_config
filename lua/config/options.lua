

--******************************************************************************
--====== GLOBALS ===============================================================
--******************************************************************************
--
-- Set global leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


--******************************************************************************
--====== NAVIGATION=============================================================
--******************************************************************************

---------LINE NUMBERS-----------
vim.opt.number = true
--vim.opt.relativenumber = true

---------CURSOR HIGHLIGHTS------
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

--******************************************************************************
--===== DEFAULT FORMATTING =====================================================
--******************************************************************************

--------TAB BEHAVIOUR-----------
vim.opt.shiftwidth = 4
vim.opt.tabstop    = 4
vim.opt.expandtab  = true

--------LINE LENGTH-------------
vim.opt.breakindent = true
vim.opt.linebreak   = true
vim.opt.autoindent  = true
vim.opt.smartindent = true


--******************************************************************************
--===== DEFAULTS+ ==============================================================
--******************************************************************************

--------WINDOW SPLITTING--------
vim.opt.splitbelow = true
vim.opt.splitright = true

--------SYSTEM INTEGRATION------
vim.opt.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.o.termguicolors = true

--------SEARCHING---------------
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

--------OTHER QOL---------------
vim.o.updatetime = 250
vim.opt.scrolloff = 10
vim.o.showcmd = true

--------DISPLAYING CHARS--------
vim.opt.listchars = {
    tab = ">>",
    trail = ".",
    nbsp = "_",
}

