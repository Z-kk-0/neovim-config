require("lazy").setup({
    -- Essentials
    { "tpope/vim-sensible" },
    { "junegunn/fzf" },
    { "morhetz/gruvbox" },
    { "nvim-lua/plenary.nvim" },
    { "TimUntersberger/neogit" },
    -- File Tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
        actions = {
            open_file = {
                quit_on_open = false,
                resize_window = true,
            },
        },
        filesystem_watchers = {
            enable = true,
        },
    })

    -- Update NvimTree when directory changed (Terminal → Tree sync)
    vim.api.nvim_create_autocmd("DirChanged", {
        callback = function()
            require("nvim-tree.api").tree.change_root(vim.loop.cwd())
        end
    })

    -- Update NvimTree when files changed (touch etc)
    vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*",
        command = "NvimTreeRefresh",
    })
  end,
},
  
    -- LSP + Mason
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
  
    -- Rust + C#
    { "simrat39/rust-tools.nvim" },
    { "seblj/roslyn.nvim" },
  
    -- Completion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
    { "rafamadriz/friendly-snippets" },
  
    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  
    -- Terminal
    { "akinsho/toggleterm.nvim", version = "*" },
  
    -- Quality of Life
    { "folke/which-key.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "numToStr/Comment.nvim" },
    { "folke/tokyonight.nvim" },
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
        require("bufferline").setup{}
        end,
    },
})
  
