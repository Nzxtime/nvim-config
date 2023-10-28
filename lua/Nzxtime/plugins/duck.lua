return {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🐕", 0.5) end, { desc = 'Spawn Dog' })
        vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, { desc = 'Kill Dog' })
    end
}

