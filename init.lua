-- init.lua for Neovim
-- Migrated from legacy .vimrc

-- 1. General Options (vim.opt)
vim.opt.number = true            -- set nu
vim.opt.ruler = true             -- set ruler
vim.opt.wrap = false             -- set nowrap
vim.opt.writebackup = true       -- set writebackup
vim.opt.backup = false           -- set nobackup
vim.opt.undofile = false         -- set noundofile
vim.opt.encoding = "utf-8"       -- set encoding=utf-8
vim.opt.fileencoding = "utf-8"   -- set fileencoding=utf-8
vim.opt.fileformat = "unix"      -- set ff=unix
vim.opt.backspace = { "indent", "eol", "start" } -- set backspace=indent,eol,start
vim.opt.laststatus = 2           -- set laststatus=2
vim.opt.hlsearch = true          -- set hlsearch
vim.opt.belloff = "all"          -- set belloff=all

-- True Color Support for terminal
vim.opt.termguicolors = true     -- Requirement 1: Enable 24-bit RGB

-- Swap file management
local swap_dir = vim.fn.expand("$HOME/.vim/swap//")
if vim.fn.isdirectory(swap_dir) == 0 then
    vim.fn.mkdir(swap_dir, "p")
end
vim.opt.directory = swap_dir     -- set directory^=$HOME/.vim/swap//

-- UI Columns/Lines (Note: Neovim in terminal usually ignores lines/columns settings)
vim.opt.colorcolumn = "120"      -- set colorcolumn=120

-- 2. Colorscheme
vim.cmd("colorscheme salmon")    -- Requirement 1: Apply legacy colorscheme

-- 3. Netrw Configuration (Requirement 2: Minimalist Explorer)
vim.g.netrw_banner = 0           -- Hide top banner
vim.g.netrw_liststyle = 3        -- Tree-view list style
vim.g.netrw_browse_split = 4     -- Open file in previous window
vim.g.netrw_altv = 1             -- Split vertically to the right
vim.g.netrw_winsize = 25         -- Set tree width to 25%

-- Keymap to toggle Netrw (similar to NERDTree toggle)
vim.keymap.set('n', '<leader>e', ':Lexplore<CR>', { silent = true, desc = 'Toggle Netrw Explorer' })

-- 4. Language Support & Autocmds (Requirement 3)
-- SystemVerilog association
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = { "*.sv", "*.svh", "*.mp" },
    command = "set syntax=systemverilog",
})

-- 5. Statusline (Requirement 4: Minimalism)
-- Translated from: set statusline=%t\ %y%h%m%r%=%{[&fenc!=''?&fenc:'none'],&ff}\ %c,%l/%L\ %P
vim.opt.statusline = "%t %y%h%m%r%=%#StatusLine#%{(len(&fenc)?&fenc:'none').','.&ff} %c,%l/%L %P"

-- 6. Aesthetic Extras from .vimrc
-- Highlight Tab
vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg = 2, fg = "#585858" }) -- Adjusting for terminal true color
vim.opt.list = true
vim.opt.listchars = { tab = "T>" }

-- 7. Python specific (as per user profile context)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})
