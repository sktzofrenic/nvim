return {
    {
        "ahmedkhalf/project.nvim",
        opts = {
            manual_mode = false,
        },
        event = "VeryLazy",
        config = function(_, opts)
            require("project_nvim").setup(opts)
            require("lazyvim.util").on_load("telescope.nvim", function()
                require("telescope").load_extension("projects")
            end)
        end,
        keys = {
            { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
        },
    },
    { "mattn/emmet-vim" },
    {
        "ThePrimeagen/harpoon",
        config = function()
            require("harpoon").setup({
                tabline = true,
                width = vim.api.nvim_win_get_width(0) - 4,
                menu = {
                    width = vim.api.nvim_win_get_width(0) - 50,
                },
            })
        end,
    },
    { "mbbill/undotree" },
    {
        "tpope/vim-fugitive",
    },
    {
        "f-person/git-blame.nvim",
        event = "BufRead",
        config = function()
            vim.cmd("highlight default link gitblame SpecialComment")
            vim.g.gitblame_enabled = 0
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "javascript",
                "json",
                "lua",
                "svelte",
                "python",
                "vue",
                "typescript",
                "tsx",
                "css",
                "rust",
                "java",
                "yaml",
            },
        },
    },
}
