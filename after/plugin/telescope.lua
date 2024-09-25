local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function() 
    builtin.find_files({ 
        hidden = true,
        no_ignore = true,
        file_ignore_patterns = {
            "%.git/",
            "node_modules",
            "__pycache__",
            "build",
            ".npm",
            ".rustup",
            ".arduino15",
            "~/.tmux/",
            ".jak",
            ".tlauncher",
            ".mozilla",
            ".kube",
            "Minecraft"
        }
    })
end, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

