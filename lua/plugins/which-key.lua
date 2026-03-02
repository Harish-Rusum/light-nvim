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

        icons = {
            mappings = false,
            breadcrumb = "",
            separator = "",
            group = "",
        },

        show_help = true,
        show_keys = true,
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)

        wk.register({
            m  = { name = "-> Split (Treesj)" },
            d  = { name = "-> Fancy Delete" },
            b  = { name = "-> Buffer Stuff" },
            bc = { name = "-> Buffer close" },
            bn = { name = "-> Buffer next" },
            bp = { name = "-> Buffer prev" },
            bt = { name = "-> Buffer idfk" },
            c  = { name = "-> Code" },
            ca = { name = "-> Lsp Code Actions" },
            cd = { name = "-> Diagnostics" },
            cf = { name = "-> Format" },
            cg = { name = "-> Goto File" },
            cr = { name = "-> Rename" },
            f  = { name = "-> Find" },
            ff = { name = "-> Find Files" },
            fc = { name = "-> Colorschemes" },
            fg = { name = "-> Find Grep" },
            fi = { name = "-> Find Icons" },
            fm = { name = "-> Find Manpages" },
            fs = { name = "-> Find Colorschemes" },
            fb = { name = "-> Buffer picker" },
            g  = { name = "-> Git" },
            gS = { name = "-> Git Stash" },
            gb = { name = "-> Git Branches" },
            gd = { name = "-> Git diff" },
            gf = { name = "-> Git Logfile" },
            gl = { name = "-> Git Log" },
            gs = { name = "-> Git Status" },
            l  = { name = "-> Lsp" },
            la = { name = "-> Abstract Syntax Tree" },
            s  = { name = "-> Split" },
            e  = { name = "-> File Explorer" },
            q  = { name = "-> Quit file" },
            w  = { name = "-> Save file" },
            T  = { name = "-> Terminal Background" },
        }, { prefix = "<leader>" })
    end,
}
