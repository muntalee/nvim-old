require('onedark').setup { transparent = true }
require('kanagawa').setup { transparent = true }
require('gruvbox').setup { transparent_mode = true }
require('everforest').setup { transparent_background = true }

local transparent = true
if vim.g.neovide then
    transparent = false
end

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
    transparent = transparent
}

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
end

ColorMe("onedark", transparent)

vim.cmd[[highlight ExtraWhitespace ctermbg=red guibg=red]]
vim.cmd[[match ExtraWhitespace /\s\+$/]]
vim.cmd[[autocmd BufWritePre * %s/\s\+$//e]]

vim.cmd[[highlight LineNr guibg=NONE cterm=NONE]]
