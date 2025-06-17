local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Exit Neovim
map("n", "<leader>qq", "<cmd>qa!<cr>", { desc = "Force Quit All" })

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Move between windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Move lines using Alt + j/k
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Yank with system clipboard
map({ "n", "v" }, "y", '"+y', { desc = "Yank to system clipboard" })
map("n", "Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Split window
map("n", "<leader>sh", ":split<Return>", { desc = "Horizontal split" })
map("n", "<leader>sv", ":vsplit<Return>", { desc = "Vertical split" })
map("n", "<leader>se", "<C-w>=", { desc = "Equalize split sizes" })
map("n", "<leader>sd", "<cmd>close<CR>", { desc = "Close current split" })

-- Resize window
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")

-- Move in insert mode using Ctrl + h/j/k/l
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

-- Quick search and replace
map("n", "<leader>r", ":%s//g<Left><Left>", { desc = "Search & Replace" })

-- save
map('n', '<C-s>', ':w<CR>', opts)

--Diagnostics
map("n", "J", function()
vim.diagnostic.goto_next()
end, opts)

-- keybinds plugins
---- new tree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle File Explorer" })


-- Buffer navigation
map("n", "<leader>be", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Close Buffer" })

-- LSP navigation
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition" })
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Find References" })
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Docs" })

-- Toggle lsp_lines
map("n", "<leader>l", function ()
  local new_value = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_value, virtual_text = not new_value })
end, { desc = "Toggle LSP Lines" })
