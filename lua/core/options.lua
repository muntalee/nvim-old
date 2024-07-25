vim.cmd([[filetype plugin on]])

local opt = vim.opt
local g = vim.g

opt.compatible = false

-- tabs & indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
vim.cmd([[set colorcolumn=80]])

opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- appearance
opt.termguicolors = true
opt.number = true
opt.signcolumn = "number"

-- clipboard & backspace
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")

-- splits
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")

-- undo dir
opt.undodir = "/tmp/"
opt.undofile = true

-- hide ~ in blank lines
vim.wo.fillchars = "eob: "

-- slimv
g.slimv_repl_split = 4
vim.cmd([[au FileType REPL set nonu]])
