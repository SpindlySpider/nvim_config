local cat = require 'plugins.alpha-headers.cat'
local k_flower = require 'plugins.alpha-headers.karma_flower'
local scug = require 'plugins.alpha-headers.scug'

vim.pack.add {
  'https://github.com/goolord/alpha-nvim',
}

math.randomseed(os.time())

local function gen_button(shortcut, txt, on_press_fn)
  return {
    type = 'button',
    val = string.format('[%s] %s', shortcut, txt),
    on_press = on_press_fn,
    opts = {
      shortcut = shortcut,
      keymap = {
        'n',
        shortcut,
        on_press_fn,
      },
      width = 30,
      align_shortcut = 'right',
      position = 'center',
      hl="AlphaButtons"
    },
  }
end

-- get random header
header_list = { scug, k_flower, cat }
local header = {
  type = 'text',
  val = header_list[math.random(#header_list)],
  opts = {
    position = 'center',
    width = 50,
    hl="AlphaHeader"
  },
}

gen_button()
local buttons = {
  type = 'group',
  val = {
    gen_button('e', 'Open scratch pad', function()
      vim.cmd 'enew'
    end),
    gen_button('g', 'Find file', function()
      telescope.find_files()
    end),
    gen_button('h', 'Browse recent files', function()
      telescope.oldfiles()
    end),
    gen_button('f', 'Browse files (Neotree)', function()
      vim.cmd 'Neotree'
    end),
    gen_button('q', '[QUIT]', function()
      vim.cmd 'q'
    end),
  },
}

local bar = {
  type="text",
  val = "-------------------------------------",
  opts = {
    position = 'center',
    width = 50,
    hl="AlphaHeader"
  },
}

local config = {
  layout = {
    { type = 'padding', val = 1 },
    header,
    { type = 'padding', val = 1 },
    bar,
    { type = 'padding', val = 2 },
    bar,
    { type = 'padding', val = 2 },
    buttons,
    { type = 'padding', val = 2 },
  },
}


local alpha = require 'alpha'
-- set colour groups:
-- AlphaHeader
-- AlphaButtons
vim.cmd("highlight AlphaHeader guifg=#FFFDB5")
vim.cmd("highlight AlphaButtons guifg=#C4C4C4")

alpha.setup(config)
