local create_autocmd = vim.api.nvim_create_autocmd
-- specify different tab widths on certain files
create_autocmd('FileType', {
  pattern = {
    'xml',
    'html',
    'xhtml',
    'css',
    'scss',
    'javascript',
    'typescript',
    'yaml',
    'javascriptreact',
    'typescriptreact',
    'markdown',
    'lua',
  },
  callback = function()
    local setlocal = vim.opt_local
    setlocal.shiftwidth = 2
    setlocal.tabstop = 2
    setlocal.softtabstop = 2
  end,
})

---> filetype configuration for miniindentscope
-- bottom whitespace trimming
create_autocmd('FileType', {
  pattern = {
    'gitconfig',
    'markdown',
    'python',
    'query',
    'scheme',
  },
  callback = function()
    vim.b.miniindentscope_config = {
      options = {
        border = 'top',
      },
    }
  end,
})
-- disabling
create_autocmd('FileType', {
  pattern = {
    'NeogitPopup',
    'NeogitStatus',
    'NvimTree',
    'alpha',
    'checkhealth',
    'fzf',
    'gitcommit',
    'gitconfig',
    'help',
    'lazy',
    'lspinfo',
    'make',
    'man',
    'mason',
  },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

require('mini.indentscope').setup({
  -- Draw options
  draw = {
    -- Delay (in ms) between event and start of drawing scope indicator
    delay = 300,

    -- Animation rule for scope's first drawing. A function which, given
    -- next and total step numbers, returns wait time (in ms). See
    -- |MiniIndentscope.gen_animation| for builtin options. To disable
    -- animation, use `require('mini.indentscope').gen_animation.none()`.
    -- Symbol priority. Increase to display on top of more symbols.
    priority = 2,
  },

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Textobjects
    object_scope = 'ii',
    object_scope_with_border = 'ai',

    -- Motions (jump to respective border line; if not present - body line)
    goto_top = '[i',
    goto_bottom = ']i',
  },

  -- Options which control scope computation
  options = {
    -- Type of scope's border: which line(s) with smaller indent to
    -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
    border = 'both',

    -- Whether to use cursor column when computing reference indent.
    -- Useful to see incremental scopes with horizontal cursor movements.
    indent_at_cursor = true,

    -- Whether to first check input line to be a border of adjacent scope.
    -- Use it if you want to place cursor on function header to get scope of
    -- its body.
    try_as_border = false,
  },

  -- Which character to use for drawing scope indicator
  symbol = '╎',
})
