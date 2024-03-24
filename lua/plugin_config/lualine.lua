  --   section_separators = { left = '', right = '' },
  -- },
  -- sections = {
  --   lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
  --   lualine_b = { 'filename', 'branch' },

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
        sections = { lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" }, },
    },
}

require('lualine').setup({ sections = { lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" }, }, })
