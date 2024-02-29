local enabled_list = {"clojure", "fennel", "commonlisp", "query", ...}
local parsers = require("nvim-treesitter.parsers")

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "elixir",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,
    ignore_install = { "javascript" },

    highlight = {
        enable = true,
        -- disable = function(lang, buf)
        disable = function(_, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        additional_vim_regex_highlighting = false,
        autotag = { enable = true },
    },


    rainbow = {
        enable = true,
        disable = vim.tbl_filter(
        function(p)
            local disable = true
            for _, lang in pairs(enabled_list) do
                if p==lang then disable = false end
            end
            return disable
        end,
        parsers.available_parsers())
    },
}
