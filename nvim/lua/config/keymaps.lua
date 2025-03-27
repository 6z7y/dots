local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
keymap.set('n', 'td', '<Cmd>bdelete<CR>', { noremap = true, silent = true }) -- Close current buffer

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Move in insert mode using Ctrl + h/j/k/l
keymap.set("i", "<C-h>", "<Left>", opts)
keymap.set("i", "<C-j>", "<Down>", opts)
keymap.set("i", "<C-k>", "<Up>", opts)
keymap.set("i", "<C-l>", "<Right>", opts)

-- keybinds plugins
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory

keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true }) -- neo-tree

keymap.set("n", "K", vim.lsp.buf.hover, {}) -- lsp
keymap.set("n", "gd", vim.lsp.buf.definition, {})
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- save
keymap.set('n', '<C-s>', ':w<CR>', opts)

--Diagnostics
keymap.set("n", "J", function()
vim.diagnostic.goto_next()
end, opts)
