require('packer').startup(function()
	use 'wbthomason/packer.nvim'            -- Packer (likes uninstalling itself)
	-------------------------
	-- LSP
	-------------------------
	use 'neovim/nvim-lspconfig'             -- LSP
	use 'hrsh7th/cmp-nvim-lsp'              -- LSP Completion Framework
	use 'glepnir/lspsaga.nvim'              -- LSP Frontend
	use 'L3MON4D3/LuaSnip'                  -- Snippets

	-------------------------
	-- Completion
	-------------------------
	use 'hrsh7th/nvim-cmp'                  -- Autocomplete
	use 'norcalli/nvim-colorizer.lua'       -- Colorizer
	use 'hrsh7th/cmp-path'                  -- File Path Completion
	use 'saadparwaiz1/cmp_luasnip'          -- Snippet Completion

	-------------------------
	-- Tmux Integration
	-------------------------
	use 'preservim/vimux'                   -- Sending Commands
	use 'christoomey/vim-tmux-navigator'    -- Navigate Windows
	use 'Mofiqul/vscode.nvim'               -- VSCode Theme

	-------------------------
	-- Treesitter
	-------------------------
	use { 'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate' }                           -- Treesitter
	use 'p00f/nvim-ts-rainbow'                        -- Rainbow Parentheses


	-------------------------
	-- File Tree
	-------------------------
	use {'kyazdani42/nvim-tree.lua',                  -- File Tree
	requires = 'kyazdani42/nvim-web-devicons'}        -- Icons

	-------------------------
	-- Working with Git
	-------------------------
	use 'tpope/vim-fugitive'                          -- Git Commands
	use { 'lewis6991/gitsigns.nvim',                  -- Git Gutter
	requires = { 'nvim-lua/plenary.nvim' },
		config = function()
		require('gitsigns').setup()
		end
		}

	-------------------------
	-- Status Bar
	-------------------------
	use {
		'nvim-lualine/lualine.nvim',                              -- Status Bar
		requires = {'kyazdani42/nvim-web-devicons', opt = true}}  -- Icons

	-------------------------
	-- Telecsope (Fuzzy Find)
	-------------------------
	use {
		'nvim-telescope/telescope.nvim',         -- Telescope
		requires = { {'nvim-lua/plenary.nvim'}}} -- Telescope Dependecy 

	-------------------------
	-- Project Management
	-------------------------
        use {
		"ahmedkhalf/project.nvim",
          	config = function()
		require("project_nvim").setup {
			update_cwd = true,
			update_focused_file = {
			enable = true,
			update_cwd = true }}
          end}
end)
