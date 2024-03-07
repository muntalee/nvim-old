vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

keymap.set("n", "<leader>\\", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height

keymap.set("n", "<leader>n", ":enew<CR>",           { silent = true })  -- open new buffer
keymap.set("n", "<leader>b", ":ls<CR>:b<Space>",    { silent = true })  -- list buffers
keymap.set("n", "<Tab>", ":bnext<CR>",              { silent = true })  -- go to next buffer
keymap.set("n", "<S-Tab>", ":bprev<CR>",            { silent = true })  -- go to previous buffer
keymap.set("n", "<leader>w", ":bd<CR>",             { silent = true })  -- close current split window

-- mapping to restart lsp if necessary
keymap.set("n", "<leader>rs", ":LspRestart<CR>", { noremap = true, silent = true })

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>",  { noremap = true, silent = true }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<Leader>fr", ":Telescope oldfiles<CR>",        { noremap = true, silent = true })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>",   { noremap = true, silent = true }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { noremap = true, silent = true }) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>",     { noremap = true, silent = true }) -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",   { noremap = true, silent = true }) -- list available help tags

-- terminal
keymap.set("n", "<leader>tt", "<cmd>FloatermToggle<cr>",        { noremap = true, silent = true })

-- open todos
keymap.set("n", "<leader>td", "<cmd>edit ~/notes/todo.md<cr>",  { noremap = true, silent = true })

-- enable/disable line numbers
keymap.set("n", "<C-n>", ":set nu! rnu!<cr>")

-- opens file explorer
keymap.set("n", "<leader>fo", ":!open .<cr>")

-- Compiling C++ code
vim.api.nvim_exec([[
    autocmd FileType cpp nnoremap <C-b> :w<CR>:FloatermNew --autoclose=0 g++ -Wall -std=c++17 -02 % -o %< && ./%<<CR>
]], false)

-- Compiling C code
vim.api.nvim_exec([[
    autocmd FileType c nnoremap <C-b> :w<CR>:FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>
]], false)

-- Running Python files
vim.api.nvim_exec([[
    autocmd FileType python nnoremap <C-b> :w<CR>:FloatermNew --autoclose=0 python3 %<CR>
]], false)
