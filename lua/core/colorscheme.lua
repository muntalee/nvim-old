require('onedark').setup { transparent = true }
require('kanagawa').setup { transparent = true }
require('gruvbox').setup { transparent_mode = true }
require('everforest').setup { transparent_background = true }

require('solarized-osaka').setup {
    on_highlights = function(hl, c)
        hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
    end,
    transparent = true
}

function ColorMe(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe('onedark')

vim.cmd[[highlight ExtraWhitespace ctermbg=red guibg=red]]
vim.cmd[[match ExtraWhitespace /\s\+$/]]
vim.cmd[[autocmd BufWritePre * %s/\s\+$//e]]

vim.cmd[[highlight LineNr guibg=NONE cterm=NONE]]
