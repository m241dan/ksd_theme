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

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local dark_grey = hsl(0, 0, 35)
local grey = hsl(0, 0, 50)
local light_grey = hsl(0, 0, 75)
local bright_white = hsl(0, 0, 100)
local soft_white = hsl(211, 20, 72)
local steel_grey = hsl(239, 45, 85)
local lilac = hsl(279, 23, 56)  -- #9876AA
local eggplant = hsl(278, 22, 45)
local orange = hsl(27, 61, 50)
local green = hsl(108, 28, 46)
local peach = hsl(37, 100, 71)
local soft_black = hsl(0, 0, 17)
local olive = hsl(57, 59, 35)
local kiwi = hsl(58, 64, 45)
local blue = hsl(206, 38, 57)
local evergreen = hsl(108, 28, 36)
local denim = hsl(206, 38, 37)
local red = hsl(0, 100, 40)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Highlight groups
    Comment {fg=grey},
    Constant {fg=blue},
    DiffAdd {fg=evergreen},
    DiffChange {fg=denim},
    DiffDelete {fg=red},
    Directory {fg=blue},
    Identifier {fg=steel_grey},
    LineNr {fg=orange},
    LineNrAbove {fg=grey},
    LineNrBelow {fg=grey},
    Normal {fg=soft_white, bg=soft_black},
    Pmenu {fg=light_grey},
    PmenuSel {fg=bright_white, bg=dark_grey},
    PreProc {fg=kiwi},
    SignColumn {},
    Special {fg=soft_white},
    Statement {fg=orange},
    Type {fg=soft_white},

    -- Highlight Symbols
    sym"@attribute.python" {fg=kiwi},
    sym"@decorator.identifier" {fg=kiwi},
    sym"@function" {fg=peach},
    sym"@function.call" {fg=soft_white},
    sym"@method" {fg=peach},
    sym"@method.call" {fg=soft_white},
    sym"@include.python" {fg=orange},
    sym"@lsp.type.class" {}, -- leave these blank so the tree-sitter parse will be used
    sym"@lsp.type.enumMember" {fg=eggplant},
    sym"@lsp.type.function" {}, -- leave these blank so the tree-sitter parse will be used
    sym"@lsp.type.macro" {fg=olive},
    sym"@lsp.type.method" {}, -- leave these blank so the tree-sitter parse will be used
    sym"@lsp.type.namespace" {fg=steel_grey},
    sym"@lsp.type.property" {fg=lilac},
    sym"@operator" {fg=soft_white},
    sym"@preproc.define.var" {fg=olive},
    sym"@preproc.ifdef.var" {fg=olive},
    sym"@punctuation.delimiter" {fg=orange},
    sym"@punctuation.special.python" {fg=orange},
    sym"@storageclass" {fg=orange}, -- StorageClass
    sym"@string" {fg=green},
    sym"@string.escape" {fg=orange},
    sym"@type.builtin" {fg=orange},
    sym"@type.qualifier" {fg=orange},
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
