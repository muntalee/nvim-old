require("conform").setup({
	-- format on save
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
		c = { "astyle_allman" },
		cpp = { "astyle_allman" },
	},
	formatters = {
		astyle_allman = {
			command = "astyle",
			args = { "--style=allman", "--indent=spaces=4" },
		},
	},
})