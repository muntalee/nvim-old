local transparent = true
if vim.g.neovide then
	transparent = false
end

require("onedark").setup({ transparent = transparent })
require("kanagawa").setup({ transparent = transparent })
require("gruvbox").setup({ transparent_mode = transparent })
require("everforest").setup({ transparent_background = transparent })

require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = transparent,
})

require("rose-pine").setup({
	styles = {
		transparency = transparent,
	},
})

function ColorMe(color, is_transparent)
	vim.cmd.colorscheme(color)
	if is_transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
	-- if color == "vim" then
	-- 	vim.cmd([[highlight ColorColumn ctermbg=grey guibg=grey]])
	-- end
end

ColorMe("catppuccin", transparent)

vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
vim.cmd([[match ExtraWhitespace /\s\+$/]])
vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])

vim.cmd([[highlight LineNr guibg=NONE cterm=NONE]])
