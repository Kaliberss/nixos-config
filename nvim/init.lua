vim.opt.number = true
vim.opt.relativenumber= true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff",builtin.find_files, { desc = "Telescope find files"})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep"})
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers"})
vim.keymap.set("n", "<leader>fh",  builtin.help_tags, { desc = "Telescope help tags"})

require("nvim-treesitter").setup({
	highlight = {enable = true},
	indent = {enable = true},
})
require("lualine").setup({
	options = {
		theme = "auto",
		icons_enabled = true,
	},
})

require("blink.cmp").setup({
	keymap = {preset = "default"},
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	sources = {
		default = {"lsp", "path", "snippets", "buffer"},
	},
})

vim.lsp.config("clangd",{
    cmd = {"clangd" },
    filetypes = {"c", "cpp", "objc", "objcpp"},
})

vim.lsp.enable("clangd")

vim.api.nvim_create_autocmd("LspAttach",{
	callback = function(args)
		local opts = {buffer = args.buf}
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,opts)
		vim.keymap.set({"n", "v"},"<leader>ca", vim.lsp.buf.code_action,opts)
	end,
})
