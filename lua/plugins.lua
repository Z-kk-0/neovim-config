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

    -- Rust + C#
    { "simrat39/rust-tools.nvim" },
    { "seblj/roslyn.nvim" },

    -- Completion
    { "rafamadriz/friendly-snippets" },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- Terminal
    { "akinsho/toggleterm.nvim",         version = "*" },

    -- Quality of Life
    { "folke/which-key.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "numToStr/Comment.nvim" },
    { "folke/tokyonight.nvim" },
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup {}
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm ci", -- braucht npm/Node ≥ 14
        ft    = { "markdown" },
        init  = function()
            vim.g.mkdp_auto_start = 1 -- Browser-Preview beim Öffnen
            vim.g.mkdp_port       = "6688"
        end,
    },

    {
        "JoosepAlviste/nvim-ts-context-commentstring",
        lazy = true,
        init = function()
            vim.g.skip_ts_context_commentstring_module = true
        end,
        config = function()
            require("ts_context_commentstring").setup({
                enable_autocmd = false,
            })
        end,
    },
    { "windwp/nvim-ts-autotag",  ft = { "html", "javascriptreact", "typescriptreact" } },
    { "mfussenegger/nvim-jdtls", ft = { "java" } },


    {
        "aznhe21/actions-preview.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            -- Good Fix = Diff-Preview
            vim.keymap.set({ "n", "v" }, "<A-q>f",
                require("actions-preview").code_actions,
                { desc = "Good Fix Preview" })
        end,
    },

    {
        "kosayoda/nvim-lightbulb",
        dependencies = { "antoinemadec/FixCursorHold.nvim" },
        config = function()
            require("nvim-lightbulb").setup({
                autocmd = { enabled = false },
            })

            local aug = vim.api.nvim_create_augroup("LightBulb", { clear = true })
            vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                group = aug,
                callback = function()
                    require("nvim-lightbulb").update_lightbulb()
                end,
            })
        end,
    },

    -- CoC (core)  ─────────────────────────────────────────────
    {
        "neoclide/coc.nvim",
        branch = "release",
        build  = "npm ci",
        init   = function()
            -- nur Extensions, die du NICHT schon via LSP hast
            vim.g.coc_global_extensions = {
                "coc-tailwindcss",
                "coc-prisma",
                "coc-docker",
                "coc-json",
            }
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        lazy = false,
        priority = 1000,
        config = function()
            require("github-theme").setup({
                options = {
                    styles = {
                        comments = "italic",
                        functions = "bold",
                        keywords = "NONE",
                        variables = "NONE"
                    }
                }
            })
            vim.cmd("colorscheme github_light")
        end
    },

    {
        "illegalleft/honeywell.vim",
        lazy = false,
        priority = 1000,
    },


    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("alphaconfig")
        end,
    },

    -- Debugging ---------------
    "mfussenegger/nvim-dap",
    },
    {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    },
    {
     "theHamsta/nvim-dap-virtual-text",
     dependencies = { "mfussenegger/nvim-dap" },
    }

)
