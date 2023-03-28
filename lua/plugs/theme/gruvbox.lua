--set to transparent

vim.cmd([[
    augroup ChangeBackgroudColour
        au ColorScheme * hi Normal ctermbg=none guibg=none
        au ColorScheme * hi FloatBorder ctermbg=none guibg=none
        au ColorScheme * hi NormalFloat ctermbg=none guibg=none
        au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
    augroup END
]])

vim.opt.termguicolors = true
vim.cmd [[colorscheme gruvbox]]
vim.opt.background = 'dark'

vim.opt.spell = true
vim.cmd [[ highlight clear SpellBad ]]
