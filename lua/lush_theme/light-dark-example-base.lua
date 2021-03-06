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

-- useful to have while developing the theme and you're editing the color file
package.loaded['lush_theme.light-dark-example-colors'] = nil
local colors = require('lush_theme.light-dark-example-colors')

local theme = lush(function()
  return {
    Comment { fg = colors.blue_500, bg = colors.gray_800 },
    CursorLine { bg = colors.gray_300, fg = colors.gray_800, gui = "italic" },

    ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { }, -- the column separating vertically split windows
    Folded       { }, -- line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { }, -- normal text
    NormalFloat  { }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { }, -- Popup menu: normal item.
    PmenuSel     { }, -- Popup menu: selected item.
    PmenuSbar    { }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { }, -- status line of current window
    StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- tab pages line, not active tab page label
    TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { }, -- warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

    Constant       { }, -- (preferred) any constant
    String         { }, --   a string constant: "this is a string"
    Character      { }, --  a character constant: 'c', '\n'
    Number         { }, --   a number constant: 234, 0xff
    Boolean        { }, --  a boolean constant: TRUE, false
    Float          { }, --    a floating point constant: 2.3e10

    Identifier     { }, -- (preferred) any variable name
    Function       { }, -- function name (also: methods for classes)

    Statement      { }, -- (preferred) any statement
    Conditional    { }, --  if, then, else, endif, switch, etc.
    Repeat         { }, --   for, do, while, etc.
    Label          { }, --    case, default, etc.
    Operator       { }, -- "sizeof", "+", "*", etc.
    Keyword        { }, --  any other keyword
    Exception      { }, --  try, catch, throw

    PreProc        { }, -- (preferred) generic Preprocessor
    Include        { }, --  preprocessor #include
    Define         { }, --   preprocessor #define
    Macro          { }, --    same as Define
    PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { }, -- (preferred) int, long, char, etc.
    StorageClass   { }, -- static, register, volatile, etc.
    Structure      { }, --  struct, union, enum, etc.
    Typedef        { }, --  A typedef

    Special        { }, -- (preferred) any special symbol
    SpecialChar    { }, --  special character in a constant
    Tag            { }, --    you can use CTRL-] on this
    Delimiter      { }, --  character that needs attention
    SpecialComment { }, -- special things inside a comment
    Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { }, -- (preferred) any erroneous construct

    Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    LspDiagnosticsError               { }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsErrorSign           { }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsErrorFloating       { }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsWarning             { }, -- used for "Warning" diagnostic virtual text
    LspDiagnosticsWarningSign         { }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsWarningFloating     { }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsInformation         { }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsInformationSign     { }, -- used for "Information" signs in sign column
    LspDiagnosticsInformationFloating { }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsHint                { }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsHintSign            { }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsHintFloating        { }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspReferenceText                  { }, -- used for highlighting "text" references
    LspReferenceRead                  { }, -- used for highlighting "read" references
    LspReferenceWrite                 { }, -- used for highlighting "write" references

    TSError              { }, -- For syntax/parser errors.
    TSPunctDelimiter     { }, -- For delimiters ie: `.`
    TSPunctBracket       { }, -- For brackets and parens.
    TSPunctSpecial       { }, -- For special punctutation that does not fall in the catagories before.
    TSConstant           { }, -- For constants
    TSConstBuiltin       { }, -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { }, -- For constants that are defined by macros: `NULL` in C.
    TSString             { }, -- For strings.
    TSStringRegex        { }, -- For regexes.
    TSStringEscape       { }, -- For escape characters within a string.
    TSCharacter          { }, -- For characters.
    TSNumber             { }, -- For integers.
    TSBoolean            { }, -- For booleans.
    TSFloat              { }, -- For floats.
    TSFunction           { }, -- For function (calls and definitions).
    TSFuncBuiltin        { }, -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSParameter          { }, -- For parameters of a function.
    TSParameterReference { }, -- For references to parameters of a function.
    TSMethod             { }, -- For method calls and definitions.
    TSField              { }, -- For fields.
    TSProperty           { }, -- Same as `TSField`.
    TSConstructor        { }, -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
    TSConditional        { }, -- For keywords related to conditionnals.
    TSRepeat             { }, -- For keywords related to loops.
    TSLabel              { }, -- For labels: `label:` in C and `:label:` in Lua.
    TSOperator           { }, -- For any operator: `+`, but also `->` and `*` in C.
    TSKeyword            { }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { }, -- For keywords used to define a fuction.
    TSException          { }, -- For exception related keywords.
    TSType               { }, -- For types.
    TSTypeBuiltin        { }, -- For builtin types (you guessed it, right ?).
    TSNamespace          { }, -- For identifiers referring to modules and namespaces.
    TSInclude            { }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSAnnotation         { }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSText               { }, -- For strings considered text in a markup language.
    TSStrong             { }, -- For text to be represented with strong.
    TSEmphasis           { }, -- For text to be represented with emphasis.
    TSUnderline          { }, -- For text to be represented with an underline.
    TSTitle              { }, -- Text that is part of a title.
    TSLiteral            { }, -- Literal text.
    TSURI                { }, -- Any URI like a link or email.
    TSVariable           { }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { }, -- Variable names that are defined by the languages, like `this` or `self`.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
