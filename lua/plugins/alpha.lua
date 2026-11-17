local cat = require 'plugins.alpha-headers.cat'
local k_flower = require 'plugins.alpha-headers.karma_flower'
local scug = require 'plugins.alpha-headers.scug'

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
    },
  }
end

math.randomseed(os.time())

vim.pack.add {
  'https://github.com/goolord/alpha-nvim',
}

local alpha = require 'alpha'

header_list = { scug, k_flower, cat }
local header = {
  type = 'text',
  val = header_list[math.random(#header_list)],
  opts = {
    position = 'center',
    width = 50,
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
  },
}

local config = {
  layout = {
    { type = 'padding', val = 2 },
    header,
    buttons,
    { type = 'padding', val = 2 },
  },
}

alpha.setup(config)
