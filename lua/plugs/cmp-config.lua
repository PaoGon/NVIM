   --██████  ████     ████ ███████                                 ████
  --██░░░░██░██░██   ██░██░██░░░░██                               ░██░
 --██    ░░ ░██░░██ ██ ░██░██   ░██     █████   ██████  ███████  ██████
--░██       ░██ ░░███  ░██░███████     ██░░░██ ██░░░░██░░██░░░██░░░██░
--░██       ░██  ░░█   ░██░██░░░░     ░██  ░░ ░██   ░██ ░██  ░██  ░██
--░░██    ██░██   ░    ░██░██       ██░██   ██░██   ░██ ░██  ░██  ░██
 --░░██████ ░██        ░██░██      ░██░░█████ ░░██████  ███  ░██  ░██
  --░░░░░░  ░░         ░░ ░░       ░░  ░░░░░   ░░░░░░  ░░░   ░░   ░░


-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes(key, true, true, true),
        mode,true)
end



require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

local signs = { Error = " ", Warn = " ", Hint = "", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

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

  experimental = {

      native_menu = false,

      ghost_text = true,

  },

  --highlights = {
      --CmpItemMenu = guifg=#3c3836, guibg=#504945
  --},
  --
  --



  sources = {
    { name = 'buffer', keyword_length = 5},
    { name = 'nvim_lsp', keyword_length = 5},
    { name = 'luasnip', keyword_length = 5},
    { name = 'nvim_lua' },
    {name = 'path'},
    {name = 'spell'},
    {name = 'calc'}
  },
}
