   --██████  ████     ████ ███████                                 ████
  --██░░░░██░██░██   ██░██░██░░░░██                               ░██░
 --██    ░░ ░██░░██ ██ ░██░██   ░██     █████   ██████  ███████  ██████
--░██       ░██ ░░███  ░██░███████     ██░░░██ ██░░░░██░░██░░░██░░░██░
--░██       ░██  ░░█   ░██░██░░░░     ░██  ░░ ░██   ░██ ░██  ░██  ░██
--░░██    ██░██   ░    ░██░██       ██░██   ██░██   ░██ ░██  ░██  ░██
 --░░██████ ░██        ░██░██      ░██░░█████ ░░██████  ███  ░██  ░██
  --░░░░░░  ░░         ░░ ░░       ░░  ░░░░░   ░░░░░░  ░░░   ░░   ░░

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end


-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

local lspkind = require "lspkind"
lspkind.init()

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
      completion = {
        completeopt = 'menu,menuone,noinsert',
      },

    formatting = {
        with_text = true,
        format = lspkind.cmp_format {
          menu = {
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
              nvim_lua = "[Lua]",
              path = "[Path]",
              spell = "[Spell]",
              calc = "[Calc]",
              latex_symbols = "[Latex]",
          },
        },
    },



  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },


  mapping = {
    ["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
    },
    ['i<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['i<C-f>'] = cmp.mapping.scroll_docs(4),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      end
    end, { "i", "s" }),
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  experimental = {
      native_menu = false,
      ghost_text = true,
  },

  sources = {
    { name = 'buffer', keyword_length = 5},
    { name = 'nvim_lsp', keyword_length = 5},
    { name = 'luasnip', keyword_length = 5},
    { name = 'nvim_lua' },
    {name = 'path'},
    {name = 'spell', keyword_length = 5},
    {name = 'calc'}
  },
}

