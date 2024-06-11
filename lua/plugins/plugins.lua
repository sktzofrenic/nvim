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
    { "mbbill/undotree" },
    {
        "cbochs/grapple.nvim",
        opts = {
            scope = "git", -- also try out "git_branch"
        },
        event = { "BufReadPost", "BufNewFile" },
        cmd = "Grapple",
        dependencies = {
            { "nvim-tree/nvim-web-devicons", lazy = true }
        },
        keys = {
            { "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
            { "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
            { "<C-e>n", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
            { "<C-e>p", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
        },
    },
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
