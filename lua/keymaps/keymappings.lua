 --████     ████                           ██
--░██░██   ██░██           ██████  ██████ ░░            █████
--░██░░██ ██ ░██  ██████  ░██░░░██░██░░░██ ██ ███████  ██░░░██  ██████
--░██ ░░███  ░██ ░░░░░░██ ░██  ░██░██  ░██░██░░██░░░██░██  ░██ ██░░░░
--░██  ░░█   ░██  ███████ ░██████ ░██████ ░██ ░██  ░██░░██████░░█████
--░██   ░    ░██ ██░░░░██ ░██░░░  ░██░░░  ░██ ░██  ░██ ░░░░░██ ░░░░░██
--░██        ░██░░████████░██     ░██     ░██ ███  ░██  █████  ██████
--░░         ░░  ░░░░░░░░ ░░      ░░      ░░ ░░░   ░░  ░░░░░  ░░░░░░
--

local map = function(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

--change to normal mode
--
map('i', 'jk', '<ESC>', {noremap = true})
map('i', 'kj', '<ESC>', {noremap = true})


-- Easy CAPS
map('n', '<leader><c-u>', 'viwU<Esc>', {noremap = true})

--better tabing
map('v', '<', '<gv', {noremap = true})
map('v', '>', '>gv', {noremap = true})

--keeping things centered
map('n', 'n', 'nzzzv', {noremap = true})
map('n', 'N', 'Nzzzv', {noremap = true})
map('n', 'J', 'mzJ`z', {noremap = true})

-- Undo break point

map('i', ',', ',<c-g>u', {noremap = true})
map('i', '.', '.<c-g>u', {noremap = true})
map('i', '{', '{<c-g>u', {noremap = true})
map('i', '(', '(<c-g>u', {noremap = true})
map('i', '!', '!<c-g>u', {noremap = true})
map('i', '?', '?<c-g>u', {noremap = true})

-- creating new line in normal mode
map('n', '<M-o>', 'o<ESC>', {noremap = true})
map('n', '<M-O>', 'O<ESC>', {noremap = true})


--moving text
map('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
map('v', 'K', ":m '<-2<CR>gv=gv", {noremap = true})
--map('n', '<leader>j', ":m .+1<CR>==", {noremap = true})
--map('n', '<leader>k', ":m .-2<CR>==", {noremap = true})
--map('i', '<C-j>', "<esc>:m .+1<CR>==", {noremap = true})
--map('i', '<C-k>', "<esc>:m .-2<CR>==", {noremap = true})
