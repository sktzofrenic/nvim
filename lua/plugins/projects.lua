return {
    {
        'ahmedkhalf/project.nvim',
        opts = {
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile"},
            detection_methods = { "pattern" },
        },
    }
}
