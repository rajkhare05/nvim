-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },  -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },           -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                -- settings without a patched font or icons
                icons = true,
                fold_open = "v",      -- icon used for open folds
                fold_closed = ">",    -- icon used for closed folds
                indent_lines = false, -- add an indent guide below the fold icons
                signs = {
                    -- icons / text used for a diagnostic
                    error = "error",
                    warning = "warn",
                    hint = "hint",
                    information = "info"
                },
                use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
            }
        end
    }
    -- use 'Exafunction/codeium.vim'
    use {
        "christoomey/vim-tmux-navigator"
    }
    use 'eandrju/cellular-automaton.nvim'

    use({
        "Kurama622/llm.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },

        cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },

        config = function()
            require("llm").setup({
                url = "http://localhost:11434/api/chat",
                model = "qwen2.5:1.5b",
                api_type = "ollama",
                temperature = 0.3,
                top_p = 0.7,
                prompt = "You are a helpful assistant.",

                prefix = {
                    user = { text = ">> ", hl = "Title" },
                    assistant = { text = "=> ", hl = "Added" },
                },

                save_session = true,
                max_history = 15,
                max_history_name_length = 20,

                keys = {
                    ["Input:Submit"]      = { mode = "n", key = "<cr>" },
                    ["Input:Cancel"]      = { mode = { "n", "i" }, key = "<C-c>" },
                    ["Input:Resend"]      = { mode = { "n", "i" }, key = "<C-r>" },
                    ["Input:HistoryNext"] = { mode = { "n", "i" }, key = "<C-j>" },
                    ["Input:HistoryPrev"] = { mode = { "n", "i" }, key = "<C-k>" },
                    ["Output:Ask"]        = { mode = "n", key = "i" },
                    ["Output:Cancel"]     = { mode = "n", key = "<C-c>" },
                    ["Output:Resend"]     = { mode = "n", key = "<C-r>" },
                    ["Session:Toggle"]    = { mode = "n", key = "<leader>ac" },
                    ["Session:Close"]     = { mode = "n", key = { "<esc>", "Q" } },
                    ["PageUp"]            = { mode = { "i", "n" }, key = "<C-b>" },
                    ["PageDown"]          = { mode = { "i", "n" }, key = "<C-f>" },
                    ["HalfPageUp"]        = { mode = { "i", "n" }, key = "<C-u>" },
                    ["HalfPageDown"]      = { mode = { "i", "n" }, key = "<C-d>" },
                    ["JumpToTop"]         = { mode = "n", key = "gg" },
                    ["JumpToBottom"]      = { mode = "n", key = "G" },
                },
            })
        end,
    })
end)
