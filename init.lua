require("config.leader")
require("config.keymaps")
require("config.lazy")
require("config.settings")

local wk = require("which-key")

wk.register({
    m = { name = "-> Split (Treesj)" },        -- window/split
    d = { name = "-> Fancy Delete" },          -- delete/trash
    b = { name = "-> Buffer Stuff" },         -- buffer/file
    bc = { name = "-> Buffer close" },         -- buffer/file
    bn = { name = "-> Buffer next" },         -- buffer/file
    bp = { name = "-> Buffer prev" },         -- buffer/file
    bt = { name = "-> Buffer idfk" },         -- buffer/file
    c = { name = "-> Code" },                 -- code
    ca = { name = "-> Lsp Code Actions" },                 -- code
    cd = { name = "-> Diagnostics" },                 -- code
    cf = { name = "-> Format" },                 -- code
    cg = { name = "-> Goto File" },                 -- code
    cr = { name = "-> Rename" },                 -- code
    f = { name = "-> Find" },                 -- search/magnifier
    ff = { name = "-> Find Files" },                 -- search/magnifier
    fg = { name = "-> Find Grep" },                 -- search/magnifier
    fi = { name = "-> Find Icons" },                 -- search/magnifier
    fm = { name = "-> Find Manpages" },                 -- search/magnifier
    fs = { name = "-> Find Colorschemes" },                 -- search/magnifier
    fb = { name = "-> Buffer picker" },                 -- search/magnifier
    g = { name = "-> Git" },                  -- git
    l = { name = "-> Lsp" },                  -- LSP/tools
    s = { name = "-> Split" },                -- split arrows
    e = { name = "-> File Explorer" },       -- folder
    q = { name = "-> Quit file" },           -- cross
    w = { name = "-> Save file" },           -- save/disk
    T = { name = "-> Terminal Background" },           -- save/disk
}, { prefix = "<leader>" })
