return {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    enabled = true,
    dependencies = { { "kevinhwang91/nvim-hlslens" } },
    config = function()
    local scrollbar = require("scrollbar")
    scrollbar.setup({
        show = true,
        show_in_active_only = false,
        set_highlights = true,
        throttle_ms = 100,
        handle = {
            text = " ",
            blend = 30, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
            color = nil,
            color_nr = nil, -- cterm
            highlight = "CursorColumn",
            hide_if_all_visible = true, -- Hides handle if all lines are visible
        },
        marks = {
            Cursor = {
                text = "•",
                priority = 0,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "Normal",
            },
            Search = {
                text = { "-", "=" },
                priority = 1,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "Search",
            },
            Error = {
                text = { "-", "=" },
                priority = 2,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "DiagnosticVirtualTextError",
            },
            Warn = {
                text = { "-", "=" },
                priority = 3,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "DiagnosticVirtualTextWarn",
            },
            Info = {
                text = { "-", "=" },
                priority = 4,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "DiagnosticVirtualTextInfo",
            },
            Hint = {
                text = { "-", "=" },
                priority = 5,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "DiagnosticVirtualTextHint",
            },
            Misc = {
                text = { "-", "=" },
                priority = 6,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "Normal",
            },
            GitAdd = {
                text = "┆",
                priority = 7,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "GitSignsAdd",
            },
            GitChange = {
                text = "┆",
                priority = 7,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "GitSignsChange",
            },
            GitDelete = {
                text = "▁",
                priority = 7,
                gui = nil,
                color = nil,
                cterm = nil,
                color_nr = nil, -- cterm
                highlight = "GitSignsDelete",
            },
        },
        excluded_buftypes = {
            "terminal",
        },
        excluded_filetypes = {
            "prompt",
            "TelescopePrompt",
        },
        autocmd = {
            render = {
                "BufWinEnter",
                "TabEnter",
                "TermEnter",
                "WinEnter",
                "CmdwinLeave",
                "TextChanged",
                "VimResized",
                "WinScrolled",
            },
            clear = {
                "BufWinLeave",
                "TabLeave",
                "TermLeave",
                "WinLeave",
            },
        },
        handlers = {
            cursor = true,
            diagnostic = true,
            handle = true,
            search = true, -- Requires hlslens
        },
    })
    end,
}
