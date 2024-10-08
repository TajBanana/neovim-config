-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use "nvim-lua/plenary.nvim"
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("navarasu/onedark.nvim")
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    --use ('theprimeagen/harpoon')
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-tree/nvim-tree.lua")
    use("nvim-tree/nvim-web-devicons")
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            {
                "L3MON4D3/LuaSnip",
                requires = {
                    "saadparwaiz1/cmp_luasnip",
                },
            },
        },
    })

    use("lukas-reineke/indent-blankline.nvim")
    use("lewis6991/gitsigns.nvim")
    use({
        "nvimtools/none-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim",
            "nvimtools/none-ls-extras.nvim",
        },
    })
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })
    use 'm4xshen/autoclose.nvim'
    use 'f-person/git-blame.nvim'
    use 'vim-test/vim-test'
    -- use 'mg979/vim-visual-multi'
end)
