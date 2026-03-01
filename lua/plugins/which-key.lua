return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern",
        delay = 200,

        win = {
            border = "rounded",
            padding = { 1, 2 },
        },

        layout = {
            spacing = 4,
            align = "left",
        },

        -- disable icons
        icons = {
            mappings = false,
            breadcrumb = "",   -- remove breadcrumb symbol
            separator = "",    -- remove separator symbol
            group = "",        -- remove group + symbol
        },

        show_help = true,
        show_keys = true,
    },
}
