vim.keymap.set("n", "<Esc>", function()
    vim.cmd([[nohlsearch]])
end)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>;", function()
    vim.cmd([[lua Snacks.dashboard()]])
end, { desc = "Dashboard" })


vim.keymap.set({"n","v"}, "<leader>d", [["_d]], {desc = 'Delete to unnamed reg'})

vim.keymap.set("n", "<leader>s[", function() vim.cmd([[vsplit]]) end, { desc = "split vertically" })
vim.keymap.set("n", "<leader>s]", function() vim.cmd([[sp]]) end, { desc = "split horizontally" })

vim.keymap.set({"n","t"}, "<C-t>", function() vim.cmd([[Floaterminal]]) end, { desc = "Floating terminal" })
vim.keymap.set("n", "<C-[>", function() vim.cmd("ToggleTerm direction=vertical size=70") end)
vim.keymap.set("t", "<C-[>", function() vim.cmd("ToggleTerm direction=vertical size=70") end)
vim.keymap.set("n", "<C-]>", function() vim.cmd("ToggleTerm direction=horizontal size=20") end)
vim.keymap.set("t", "<C-]>", function() vim.cmd("ToggleTerm direction=horizontal size=20") end)

vim.keymap.set("n", "<leader>e", function() vim.cmd[[lua Snacks.explorer()]] end, {desc = "File Explorer" })

vim.keymap.set( "n", "<leader>gb", function() vim.cmd[[lua Snacks.picker.git_branches()]] end, {desc = "Git Branches"})
vim.keymap.set( "n", "<leader>gl", function() vim.cmd[[lua Snacks.picker.git_log()]] end, {desc = "Git Log" })
vim.keymap.set( "n", "<leader>gs", function() vim.cmd[[lua Snacks.picker.git_status()]] end, {desc = "Git Status" })
vim.keymap.set( "n", "<leader>gd", function() vim.cmd[[lua Snacks.picker.git_diff()]] end, {desc = "Git Diff (Hunk)s"})
vim.keymap.set( "n", "<leader>gf", function() vim.cmd[[lua Snacks.picker.git_log_file()]] end, {desc = "Git Log File" })
vim.keymap.set( "n", "<leader>gS", function() vim.cmd[[lua Snacks.picker.git_stash()]] end, {desc = "Git Stash" })

vim.keymap.set( "n", '<leader>f"', function() vim.cmd[[lua Snacks.picker.registers()]] end, {desc = "Registers"} )

vim.keymap.set("n", "<leader>ff", function() vim.cmd[[lua Snacks.picker.files()]] end, { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>fc", function() vim.cmd[[lua Snacks.picker.colorschemes()]] end, { desc = "Fuzzy find colorschemes" })
vim.keymap.set("n", "<leader>fs", function() vim.cmd[[lua Snacks.picker.colorschemes()]] end, { desc = "Color scheme picker" })
vim.keymap.set("n", "<C-p>", function() vim.cmd([[lua Snacks.picker.files()]]) end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function() vim.cmd([[lua Snacks.picker.grep()]]) end, { desc = "Live grep (search for word)" })
vim.keymap.set("n", "<leader>fb", function() vim.cmd([[lua Snacks.picker.buffers()]]) end, { desc = "Live buffer picker" })
vim.keymap.set("n", "<leader>fi", function() vim.cmd([[lua Snacks.picker.icons()]]) end, { desc = "Pick from icons" })
vim.keymap.set("n", "<leader><leader>f", function() vim.cmd([[lua Snacks.picker()]]) end, { desc = "Pick from all available pickers" })

vim.keymap.set("n", "<leader>fm", function() vim.cmd[[lua Snacks.picker.man()]] end, {desc = "Find man Pages"} )

vim.keymap.set("n", "<leader>cf", function() vim.cmd([[echo 'Formatted successfully' | Format]]) end, { desc = "Format buffer" })
vim.keymap.set("n", "<leader>cg", function() vim.cmd([[lua vim.lsp.buf.definition()]]) end, { desc = "Go to file" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename variable" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code actions" })
vim.keymap.set("n", "<leader>cd", function() vim.cmd([[Trouble]]) end, { desc = "Diagnostics using Trouble" })
vim.keymap.set("n", "<leader>la", function() vim.cmd([[InspectTree]]) end, { desc = "open an ast (abstract syntax tere)" })

vim.keymap.set("n", ",", "<C-w>2>")
vim.keymap.set("n", ".", "<C-w>2<")
vim.keymap.set("n", "<C-,>", "<C-w>2-")
vim.keymap.set("n", "<C-.>", "<C-w>2+")
vim.keymap.set("n", "<C-Left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-Right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-Down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-Up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>bn", function() vim.cmd([[bnext]]) end, { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bt", function() vim.cmd([[BufferLineGroupToggle ungrouped]]) end, { desc = "Toggle buffers" })
vim.keymap.set("n", "<leader>bc", function() vim.cmd([[bdelete]]) end, { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bp", function() vim.cmd([[bprev]]) end, { desc = "Previous buffer" })
vim.keymap.set("n", "<Tab>", function() vim.cmd([[bn]]) end, { desc = "Toggle buffer focus" })

vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-v>", "p")
vim.keymap.set("v", "<C-p>", "p")
vim.keymap.set("n", "<C-c>", "y")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-c>", "y")
vim.api.nvim_set_keymap("n", "<S-Up>", "<Esc>V<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "<Esc>V<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Up>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Down>", "<Down>", { noremap = true, silent = true })

vim.keymap.set("c", "W", "w")
vim.keymap.set("c", "Q", "q")
vim.keymap.set("n", "<leader><leader>c", "i<C-r>=", { desc = "open calculator" })
vim.keymap.set("n", "123", "<Esc>", { desc = "open calculator" })
vim.keymap.set("i", "123", "<Esc>", { desc = "open calculator" })
vim.keymap.set("n", "<leader>w", function() vim.cmd([[w]]) end, { desc = "save file" })
vim.keymap.set("n", "<leader>q", function() vim.cmd([[q!]]) end, { desc = "quit file" })
vim.keymap.set("i", "<C-w>", "<C-o>diw", { desc = "Delete a word backwards in insert mode", silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })
vim.keymap.set("v", "<", "<gv", { silent = true })

local is_transparent = false

function ToggleTransparency()
    is_transparent = not is_transparent
    require("catppuccin").setup({
        transparent_background = is_transparent,
    })
    vim.cmd.colorscheme("catppuccin")
    vim.cmd([[highlight Visual guibg=#2f2f3f guifg=none]])
    vim.cmd([[highlight WinSeparator guifg=#383646 guibg=none]])
    local colors = require("catppuccin.palettes").get_palette("mocha")

    vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "NONE", fg = "#FCFFC1" })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "NONE", fg = "#FCFFC1" })
    vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = "#FCFFC1" })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = "#FCFFC1" })
end

vim.keymap.set("n", "<leader>rc", function() vim.cmd([[RunCpp]]) end, { desc = "Compile and run C++" })
vim.api.nvim_set_keymap("n", "<leader>T", ":lua ToggleTransparency()<CR>", { noremap = true, silent = true, desc = "Toggle transparent background" })

vim.keymap.set("n", "<leader><leader>p", function()
    local current_file = vim.api.nvim_buf_get_name(0)
    if current_file == "" then
        print("No file currently open")
        return
    end

    local current_dir = vim.fn.fnamemodify(current_file, ":p:h")
    vim.api.nvim_set_current_dir(current_dir)
    print("Changed root directory to " .. current_dir)
end, { desc = "Change root dir to this dir" })
