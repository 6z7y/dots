-- UI Settings
vim.opt.number = true                      -- Line numbers
vim.opt.relativenumber = true             -- Relative line numbers
vim.opt.cursorline = true                 -- Highlight current line
vim.opt.laststatus = 3                    -- Global statusline
vim.opt.scrolloff = 8                     -- Scroll padding
vim.opt.splitbelow = true                 -- New splits below
vim.opt.splitright = true                 -- New splits to the right
vim.opt.wrap = false                      -- Disable line wrapping
vim.opt.cmdheight = 0                     -- Minimal command line height
vim.opt.title = true                      -- Show window title
vim.opt.breakindent = true                -- Indent wrapped lines
vim.opt.signcolumn = "yes"                -- Always show sign column
vim.opt.splitkeep = "cursor"              -- Keep cursor when splitting

-- Indentation
vim.opt.expandtab = true       -- تحويل الـ tab إلى مسافات (أولاً)
vim.opt.tabstop = 4            -- عرض حرف الـ tab (4 مسافات) - الأفضل للبرمجة
vim.opt.shiftwidth = 4         -- مسافة المسافة البادئة التلقائية (4 مسافات)
vim.opt.softtabstop = 4        -- مسافة الـ tab عند الضغط على زر Tab
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Clipboard
vim.opt.clipboard:append("unnamedplus")   -- Use system clipboard

-- File encoding
vim.opt.fileencoding = "utf-8"

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"

-- Misc
vim.opt.showcmd = true
vim.opt.backspace = { "start", "eol", "indent" }

-- Undercurl (for terminal styling)
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisk on block comment continuation
vim.opt.formatoptions:append({ "r" })

-- Filetype-specific file detection
vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

-- Disable conceal in some filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})
