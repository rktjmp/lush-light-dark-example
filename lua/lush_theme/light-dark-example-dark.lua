--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require('lush')

package.loaded['lush_theme.light-dark-example-colors'] = nil

local colors = require('lush_theme.light-dark-example-colors')
local base = require('lush_theme.light-dark-example-base')

local theme = lush.extends(base).with(function()
  return {
    Normal { fg = colors.gray_500, bg = colors.gray_800 },
    CursorLine { fg = colors.gray_800, bg = colors.blue_500}
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
