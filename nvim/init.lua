vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes:1'
vim.o.confirm = true

vim.pack.add {
	'https://github.com/ThePrimeagen/99',
	'https://github.com/norcalli/nvim-colorizer.lua',
	'https://github.com/brenoprata10/nvim-highlight-colors',
	'https://github.com/y9san9/y9nika.nvim',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/catppuccin/nvim',
}

require("oil").setup()
vim.cmd.colorscheme('catppuccin')
