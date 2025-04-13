function DSA()
    print("DSA")
    vim.api.nvim_get_current_win()
    vim.api.nvim_command('vs input')
    vim.api.nvim_command('vertical resize 40')
    vim.api.nvim_command('split output')
    --vim.api.nvim_command(main_win .. 'wincmd w')
end

vim.keymap.set("n", "<leader>dsa", DSA);
