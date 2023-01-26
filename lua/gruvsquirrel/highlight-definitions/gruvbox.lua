-- this is a hacked together version of gruvbox that still needs to be converted

local config = {
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = true,
  transparent_mode = false,
}

local palette = {
  dark0_hard = "#1d2021",
  dark0 = "#282828",
  dark0_soft = "#32302f",
  dark1 = "#3c3836",
  dark2 = "#504945",
  dark3 = "#665c54",
  dark4 = "#7c6f64",
  light0_hard = "#f9f5d7",
  light0 = "#fbf1c7",
  light0_soft = "#f2e5bc",
  light2 = "#d5c4a1",
  light3 = "#bdae93",
  light4 = "#a89984",
  bright_purple = "#d3869b",
  neutral_red = "#cc241d",
  neutral_green = "#98971a",
  neutral_yellow = "#d79921",
  neutral_blue = "#458588",
  neutral_purple = "#b16286",
  neutral_aqua = "#689d6a",
  neutral_orange = "#d65d0e",
  faded_red = "#9d0006",
  faded_green = "#79740e",
  faded_yellow = "#b57614",
  faded_blue = "#076678",
  faded_purple = "#8f3f71",
  faded_aqua = "#427b58",
  faded_orange = "#af3a03",
  gray = "#928374",
  black0 = "#000000",
  black1 = "#070707",
  black2 = "#0d0d0d",
  black3 = "#1a1a1a",
  -- bright_green = "#a7c080",
  bright_green = "#8faa80",
  bright_yellow = "#dbbc5f",
  bright_red = "#ff6961",
  light1 = "#c7c7c7",
  bright_aqua = "#9dbad4",
  bright_blue = "#83a598", -- default
  mint = "#a9d5c4",
  dim_light1 = "#a0a0a0",
  bright_orange = "#d6991d",
  tint_of_red = "#b7a7b7"
}

local colors = {
  -- options (dark mode by default)
  bg0 = palette.dark0,
  bg1 = palette.dark1,
  bg2 = palette.dark2,
  bg3 = palette.dark3,
  bg4 = palette.dark4,
  fg0 = palette.light0,
  fg1 = palette.light1,
  fg2 = palette.light2,
  fg3 = palette.light3,
  fg4 = palette.light4,
  red = palette.bright_red,
  green = palette.bright_green,
  yellow = palette.bright_yellow,
  blue = palette.bright_blue,
  purple = palette.bright_purple,
  aqua = palette.bright_aqua,
  orange = palette.bright_orange,
  neutral_red = palette.neutral_red,
  neutral_green = palette.neutral_green,
  neutral_yellow = palette.neutral_yellow,
  neutral_blue = palette.neutral_blue,
  neutral_purple = palette.neutral_purple,
  neutral_aqua = palette.neutral_aqua,
}

local groups = {
  -- Base groups
  GruvboxFg0 = { fg = colors.fg0 },
  GruvboxFg1 = { fg = colors.fg1 },
  GruvboxFg2 = { fg = colors.fg2 },
  GruvboxFg3 = { fg = colors.fg3 },
  GruvboxFg4 = { fg = colors.fg4 },
  GruvboxGray = { fg = colors.gray },
  GruvboxBg0 = { fg = colors.bg0 },
  GruvboxBg1 = { fg = colors.bg1 },
  GruvboxBg2 = { fg = colors.bg2 },
  GruvboxBg3 = { fg = colors.bg3 },
  GruvboxBg4 = { fg = colors.bg4 },
  GruvboxRed = { fg = colors.red },
  GruvboxRedBold = { fg = colors.red, bold = config.bold },
  GruvboxGreen = { fg = colors.green },
  GruvboxGreenBold = { fg = colors.green, bold = config.bold },
  GruvboxYellow = { fg = colors.yellow },
  GruvboxYellowBold = { fg = colors.yellow, bold = config.bold },
  GruvboxBlue = { fg = colors.blue },
  GruvboxBlueBold = { fg = colors.blue, bold = config.bold },
  GruvboxPurple = { fg = colors.purple },
  GruvboxPurpleBold = { fg = colors.purple, bold = config.bold },
  GruvboxAqua = { fg = colors.aqua },
  GruvboxAquaBold = { fg = colors.aqua, bold = config.bold },
  GruvboxOrange = { fg = colors.orange },
  GruvboxOrangeBold = { fg = colors.orange, bold = config.bold },
  GruvboxRedSign = { fg = colors.red, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxGreenSign = { fg = colors.green, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxYellowSign = { fg = colors.yellow, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxBlueSign = { fg = colors.blue, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxPurpleSign = { fg = colors.purple, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxAquaSign = { fg = colors.aqua, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxOrangeSign = { fg = colors.orange, bg = colors.bg1, reverse = config.invert_signs },
  GruvboxRedUnderline = { undercurl = config.undercurl, sp = colors.red },
  GruvboxGreenUnderline = { undercurl = config.undercurl, sp = colors.green },
  GruvboxYellowUnderline = { undercurl = config.undercurl, sp = colors.yellow },
  GruvboxBlueUnderline = { undercurl = config.undercurl, sp = colors.blue },
  GruvboxPurpleUnderline = { undercurl = config.undercurl, sp = colors.purple },
  GruvboxAquaUnderline = { undercurl = config.undercurl, sp = colors.aqua },
  GruvboxOrangeUnderline = { undercurl = config.undercurl, sp = colors.orange },

  -- TODO: see https://github.com/neovim/neovim/blob/master/runtime/doc/lsp.txt
  -- LspReferenceRead = { link = "GruvboxYellowBold" },
  -- LspReferenceText = { link = "GruvboxYellowBold" },
  -- LspReferenceWrite = { link = "GruvboxOrangeBold" },
  -- LspCodeLens = { link = "GruvboxGray" },


  -- TODO: revisit, see https://github.com/neovim/neovim/blob/e866da12eeae1e5521abd89a94a7f7c9595a75c3/runtime/syntax/gitcommit.vim
  -- for git commit
  -- TODO: check syntax files in neovim
  -- gitcommit
  -- gitcommitSelectedFile = { link = "GruvboxGreen" },
  -- gitcommitDiscardedFile = { link = "GruvboxRed" },

  -- -- gitsigns.nvim
  -- GitSignsAdd = { fg = "#53654E" },
  -- GitSignsAddNr = { bg = "#53654E", fg = "#c7c7c7" },
  --
  -- GitSignsChange = { fg = "#88a67f" },
  -- GitSignsChangeNr = { bg = "#88a67f", fg = "#3c3836" },
  --
  -- GitSignsDelete = { fg = "#692e26" },
  -- GitSignsDeleteNr = { bg = "#692e26", fg = "#c7c7c7" },
  --
  -- WasBoxPurpleSign = { fg = colors.bright_purple },
  -- GitSignsUntracked = { link = "WasBoxPurpleSign" },
  -- GitSignsUntrackedNr = { link = "GitSignsUntracked" },
  -- GitSignsUntrackedLn = { bg = colors.bright_purple },
  --
  -- WasBoxOrangeSign = { fg = "#8b7e57" },
  -- GitSignsChangeDelete = { link = "WasBoxOrangeSign" },
  -- GitSignsChangeDeleteNr = { bg = "#8b7e57", fg = "#3c3836" },
  -- GitSignsChangeDeleteLn = { bg = "#88a67f" },
  --
  -- GitSignsChangeInline = { bg = "#88a67f", fg = "#0d0d0d" }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  -- GitSignsChangeLnInline = { bg = "#88a67f", fg = "#0d0d0d" }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  -- GitSignsChangeLnVirtline = { bg = "#88a67f", fg = "#0d0d0d" }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  --
  -- -- GitSignsChangeInline = { link = "DiffText" }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  -- -- GitSignsChangeLnInline = { bg = "#88a67f", fg = colors.black2 }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  -- -- GitSignsChangeVirtLnInline = { link = "DiffText" }, -- TODO https://github.com/lewis6991/gitsigns.nvim/blob/b0d16a6a022454590308550eada8ffb8686335aa/lua/gitsigns/config.lua#L714
  -- -- GitSignsChange = { link = "GruvboxYellowSign" },

  -- blue_green
  -- NvimTreeSymlink = { fg = "#9dbad4" },
  -- NvimTreeWindowPicker = { bg = "#9dbad4" },
  -- -- purple
  -- NvimTreeRootFolder = { fg = "#d3869b", bold = true },
  -- NvimTreeImageFile = { fg = "#d3869b" },
  -- NvimTreeGitMerge = { fg = "#d3869b" },
  -- NvimTreeGitRenamed = { fg = "#d3869b" },
  -- -- blue
  -- NvimTreeFolderIcon = { fg = "#9dbad4", bold = false },
  -- NvimTreeFolderName = { fg = "#9dbad4", bold = false },
  -- -- white
  -- NvimTreeFileIcon = { fg = "#c7c7c7" },
  -- -- green
  -- NvimTreeExecFile = { fg = "#8faa80", bold = true },
  -- -- red
  -- NvimTreeOpenedFile = { fg = "#ff6961", bold = true },
  -- NvimTreeGitDeleted = { fg = "#ff6961" },
  -- -- yellow
  -- NvimTreeSpecialFile = { fg = "#dbbc5f", bold = true, underline = true },
  -- NvimTreeGitDirty = { fg = "#dbbc5f" },
  -- NvimTreeGitStaged = { fg = "#dbbc5f" },
  -- NvimTreeGitNew = { fg = "#dbbc5f" },
  -- -- gray
  -- NvimTreeIndentMarker = { fg = "#665c54" },

  -- termdebug
  debugPC = { bg = palette.faded_blue },
  debugBreakpoint = { link = "GruvboxRedSign" },
  -- vim-startify
  StartifyBracket = { link = "GruvboxFg3" },
  StartifyFile = { link = "GruvboxFg1" },
  StartifyNumber = { link = "GruvboxBlue" },
  StartifyPath = { link = "GruvboxGray" },
  StartifySlash = { link = "GruvboxGray" },
  StartifySection = { link = "GruvboxYellow" },
  StartifySpecial = { link = "GruvboxBg2" },
  StartifyHeader = { link = "GruvboxOrange" },
  StartifyFooter = { link = "GruvboxBg2" },
  StartifyVar = { link = "StartifyPath" },
  StartifySelect = { link = "Title" },
  -- vim-dirvish
  DirvishPathTail = { link = "GruvboxAqua" },
  DirvishArg = { link = "GruvboxYellow" },
  -- netrw
  netrwDir = { link = "GruvboxAqua" },
  netrwClassify = { link = "GruvboxAqua" },
  netrwLink = { link = "GruvboxGray" },
  netrwSymLink = { link = "GruvboxFg1" },
  netrwExe = { link = "GruvboxYellow" },
  netrwComment = { link = "GruvboxGray" },
  netrwList = { link = "GruvboxBlue" },
  netrwHelpCmd = { link = "GruvboxAqua" },
  netrwCmdSep = { link = "GruvboxFg3" },
  netrwVersion = { link = "GruvboxGreen" },
  -- nerdtree
  NERDTreeDir = { link = "GruvboxAqua" },
  NERDTreeDirSlash = { link = "GruvboxAqua" },
  NERDTreeOpenable = { link = "GruvboxOrange" },
  NERDTreeClosable = { link = "GruvboxOrange" },
  NERDTreeFile = { link = "GruvboxFg1" },
  NERDTreeExecFile = { link = "GruvboxYellow" },
  NERDTreeUp = { link = "GruvboxGray" },
  NERDTreeCWD = { link = "GruvboxGreen" },
  NERDTreeHelp = { link = "GruvboxFg1" },
  NERDTreeToggleOn = { link = "GruvboxGreen" },
  NERDTreeToggleOff = { link = "GruvboxRed" },
  -- coc.nvim
  CocErrorSign = { link = "GruvboxRedSign" },
  CocWarningSign = { link = "GruvboxOrangeSign" },
  CocInfoSign = { link = "GruvboxBlueSign" },
  CocHintSign = { link = "GruvboxAquaSign" },
  CocErrorFloat = { link = "GruvboxRed" },
  CocWarningFloat = { link = "GruvboxOrange" },
  CocInfoFloat = { link = "GruvboxBlue" },
  CocHintFloat = { link = "GruvboxAqua" },
  CocDiagnosticsError = { link = "GruvboxRed" },
  CocDiagnosticsWarning = { link = "GruvboxOrange" },
  CocDiagnosticsInfo = { link = "GruvboxBlue" },
  CocDiagnosticsHint = { link = "GruvboxAqua" },
  CocSelectedText = { link = "GruvboxRed" },
  CocMenuSel = { link = "PmenuSel" },
  CocCodeLens = { link = "GruvboxGray" },
  CocErrorHighlight = { link = "GruvboxRedUnderline" },
  CocWarningHighlight = { link = "GruvboxOrangeUnderline" },
  CocInfoHighlight = { link = "GruvboxBlueUnderline" },
  CocHintHighlight = { link = "GruvboxAquaUnderline" },
  -- telescope.nvim
  TelescopeNormal = { link = "GruvboxFg1" },
  TelescopeSelection = { link = "GruvboxOrangeBold" },
  TelescopeSelectionCaret = { link = "GruvboxRed" },
  TelescopeMultiSelection = { link = "GruvboxGray" },
  TelescopeBorder = { link = "TelescopeNormal" },
  TelescopePromptBorder = { link = "TelescopeNormal" },
  TelescopeResultsBorder = { link = "TelescopeNormal" },
  TelescopePreviewBorder = { link = "TelescopeNormal" },
  TelescopeMatching = { link = "GruvboxBlue" },
  TelescopePromptPrefix = { link = "GruvboxRed" },
  TelescopePrompt = { link = "TelescopeNormal" },
  -- nvim-cmp
  CmpItemAbbr = { link = "GruvboxFg0" },
  CmpItemAbbrDeprecated = { link = "GruvboxFg1" },
  CmpItemAbbrMatch = { link = "GruvboxBlueBold" },
  CmpItemAbbrMatchFuzzy = { link = "GruvboxBlueUnderline" },
  CmpItemMenu = { link = "GruvboxGray" },
  CmpItemKindText = { link = "GruvboxOrange" },
  CmpItemKindMethod = { link = "GruvboxBlue" },
  CmpItemKindFunction = { link = "GruvboxBlue" },
  CmpItemKindConstructor = { link = "GruvboxYellow" },
  CmpItemKindField = { link = "GruvboxBlue" },
  CmpItemKindClass = { link = "GruvboxYellow" },
  CmpItemKindInterface = { link = "GruvboxYellow" },
  CmpItemKindModule = { link = "GruvboxBlue" },
  CmpItemKindProperty = { link = "GruvboxBlue" },
  CmpItemKindValue = { link = "GruvboxOrange" },
  CmpItemKindEnum = { link = "GruvboxYellow" },
  CmpItemKindKeyword = { link = "GruvboxPurple" },
  CmpItemKindSnippet = { link = "GruvboxGreen" },
  CmpItemKindFile = { link = "GruvboxBlue" },
  CmpItemKindEnumMember = { link = "GruvboxAqua" },
  CmpItemKindConstant = { link = "GruvboxOrange" },
  CmpItemKindStruct = { link = "GruvboxYellow" },
  CmpItemKindTypeParameter = { link = "GruvboxYellow" },
  diffAdded = { link = "GruvboxGreen" },
  diffRemoved = { link = "GruvboxRed" },
  diffChanged = { link = "GruvboxAqua" },
  diffFile = { link = "GruvboxOrange" },
  diffNewFile = { link = "GruvboxYellow" },
  diffLine = { link = "GruvboxBlue" },
  -- navic (highlight icons)
  NavicIconsFile = { link = "GruvboxBlue" },
  NavicIconsModule = { link = "GruvboxOrange" },
  NavicIconsNamespace = { link = "GruvboxBlue" },
  NavicIconsPackage = { link = "GruvboxAqua" },
  NavicIconsClass = { link = "GruvboxYellow" },
  NavicIconsMethod = { link = "GruvboxBlue" },
  NavicIconsProperty = { link = "GruvboxAqua" },
  NavicIconsField = { link = "GruvboxPurple" },
  NavicIconsConstructor = { link = "GruvboxBlue" },
  NavicIconsEnum = { link = "GruvboxPurple" },
  NavicIconsInterface = { link = "GruvboxGreen" },
  NavicIconsFunction = { link = "GruvboxBlue" },
  NavicIconsVariable = { link = "GruvboxPurple" },
  NavicIconsConstant = { link = "GruvboxOrange" },
  NavicIconsString = { link = "GruvboxGreen" },
  NavicIconsNumber = { link = "GruvboxOrange" },
  NavicIconsBoolean = { link = "GruvboxOrange" },
  NavicIconsArray = { link = "GruvboxOrange" },
  NavicIconsObject = { link = "GruvboxOrange" },
  NavicIconsKey = { link = "GruvboxAqua" },
  NavicIconsNull = { link = "GruvboxOrange" },
  NavicIconsEnumMember = { link = "GruvboxYellow" },
  NavicIconsStruct = { link = "GruvboxPurple" },
  NavicIconsEvent = { link = "GruvboxYellow" },
  NavicIconsOperator = { link = "GruvboxRed" },
  NavicIconsTypeParameter = { link = "GruvboxRed" },
  NavicText = { link = "GruvboxWhite" },
  NavicSeparator = { link = "GruvboxWhite" },
  -- html
  htmlTag = { link = "GruvboxAquaBold" },
  htmlEndTag = { link = "GruvboxAquaBold" },
  htmlTagName = { link = "GruvboxBlue" },
  htmlArg = { link = "GruvboxOrange" },
  htmlTagN = { link = "GruvboxFg1" },
  htmlSpecialTagName = { link = "GruvboxBlue" },
  htmlLink = { fg = colors.fg4, underline = config.underline },
  htmlSpecialChar = { link = "GruvboxRed" },
  htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
  htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
  htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = config.italic },
  htmlBoldUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    bold = config.bold,
    italic = config.italic,
    underline = config.underline,
  },
  htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
  htmlUnderlineItalic = {
    fg = colors.fg0,
    bg = colors.bg0,
    italic = config.italic,
    underline = config.underline,
  },
  htmlItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.italic },
  -- xml
  xmlTag = { link = "GruvboxAquaBold" },
  xmlEndTag = { link = "GruvboxAquaBold" },
  xmlTagName = { link = "GruvboxBlue" },
  xmlEqual = { link = "GruvboxBlue" },
  docbkKeyword = { link = "GruvboxAquaBold" },
  xmlDocTypeDecl = { link = "GruvboxGray" },
  xmlDocTypeKeyword = { link = "GruvboxPurple" },
  xmlCdataStart = { link = "GruvboxGray" },
  xmlCdataCdata = { link = "GruvboxPurple" },
  dtdFunction = { link = "GruvboxGray" },
  dtdTagName = { link = "GruvboxPurple" },
  xmlAttrib = { link = "GruvboxOrange" },
  xmlProcessingDelim = { link = "GruvboxGray" },
  dtdParamEntityPunct = { link = "GruvboxGray" },
  dtdParamEntityDPunct = { link = "GruvboxGray" },
  xmlAttribPunct = { link = "GruvboxGray" },
  xmlEntity = { link = "GruvboxRed" },
  xmlEntityPunct = { link = "GruvboxRed" },
  -- clojure
  clojureKeyword = { link = "GruvboxBlue" },
  clojureCond = { link = "GruvboxOrange" },
  clojureSpecial = { link = "GruvboxOrange" },
  clojureDefine = { link = "GruvboxOrange" },
  clojureFunc = { link = "GruvboxYellow" },
  clojureRepeat = { link = "GruvboxYellow" },
  clojureCharacter = { link = "GruvboxAqua" },
  clojureStringEscape = { link = "GruvboxAqua" },
  clojureException = { link = "GruvboxRed" },
  clojureRegexp = { link = "GruvboxAqua" },
  clojureRegexpEscape = { link = "GruvboxAqua" },
  clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
  clojureRegexpMod = { link = "clojureRegexpCharClass" },
  clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
  clojureParen = { link = "GruvboxFg3" },
  clojureAnonArg = { link = "GruvboxYellow" },
  clojureVariable = { link = "GruvboxBlue" },
  clojureMacro = { link = "GruvboxOrange" },
  clojureMeta = { link = "GruvboxYellow" },
  clojureDeref = { link = "GruvboxYellow" },
  clojureQuote = { link = "GruvboxYellow" },
  clojureUnquote = { link = "GruvboxYellow" },
  -- C
  cOperator = { link = "GruvboxPurple" },
  cppOperator = { link = "GruvboxPurple" },
  cStructure = { link = "GruvboxOrange" },
  -- python
  pythonBuiltin = { link = "GruvboxOrange" },
  pythonBuiltinObj = { link = "GruvboxOrange" },
  pythonBuiltinFunc = { link = "GruvboxOrange" },
  pythonFunction = { link = "GruvboxAqua" },
  pythonDecorator = { link = "GruvboxRed" },
  pythonInclude = { link = "GruvboxBlue" },
  pythonImport = { link = "GruvboxBlue" },
  pythonRun = { link = "GruvboxBlue" },
  pythonCoding = { link = "GruvboxBlue" },
  pythonOperator = { link = "GruvboxRed" },
  pythonException = { link = "GruvboxRed" },
  pythonExceptions = { link = "GruvboxPurple" },
  pythonBoolean = { link = "GruvboxPurple" },
  pythonDot = { link = "GruvboxFg3" },
  pythonConditional = { link = "GruvboxRed" },
  pythonRepeat = { link = "GruvboxRed" },
  pythonDottedName = { link = "GruvboxGreenBold" },
  -- CSS
  cssBraces = { link = "GruvboxBlue" },
  cssFunctionName = { link = "GruvboxYellow" },
  cssIdentifier = { link = "GruvboxOrange" },
  cssClassName = { link = "GruvboxGreen" },
  cssColor = { link = "GruvboxBlue" },
  cssSelectorOp = { link = "GruvboxBlue" },
  cssSelectorOp2 = { link = "GruvboxBlue" },
  cssImportant = { link = "GruvboxGreen" },
  cssVendor = { link = "GruvboxFg1" },
  cssTextProp = { link = "GruvboxAqua" },
  cssAnimationProp = { link = "GruvboxAqua" },
  cssUIProp = { link = "GruvboxYellow" },
  cssTransformProp = { link = "GruvboxAqua" },
  cssTransitionProp = { link = "GruvboxAqua" },
  cssPrintProp = { link = "GruvboxAqua" },
  cssPositioningProp = { link = "GruvboxYellow" },
  cssBoxProp = { link = "GruvboxAqua" },
  cssFontDescriptorProp = { link = "GruvboxAqua" },
  cssFlexibleBoxProp = { link = "GruvboxAqua" },
  cssBorderOutlineProp = { link = "GruvboxAqua" },
  cssBackgroundProp = { link = "GruvboxAqua" },
  cssMarginProp = { link = "GruvboxAqua" },
  cssListProp = { link = "GruvboxAqua" },
  cssTableProp = { link = "GruvboxAqua" },
  cssFontProp = { link = "GruvboxAqua" },
  cssPaddingProp = { link = "GruvboxAqua" },
  cssDimensionProp = { link = "GruvboxAqua" },
  cssRenderProp = { link = "GruvboxAqua" },
  cssColorProp = { link = "GruvboxAqua" },
  cssGeneratedContentProp = { link = "GruvboxAqua" },
  -- javascript
  javaScriptBraces = { link = "GruvboxFg1" },
  javaScriptFunction = { link = "GruvboxAqua" },
  javaScriptIdentifier = { link = "GruvboxRed" },
  javaScriptMember = { link = "GruvboxBlue" },
  javaScriptNumber = { link = "GruvboxPurple" },
  javaScriptNull = { link = "GruvboxPurple" },
  javaScriptParens = { link = "GruvboxFg3" },
  -- typescript
  typescriptReserved = { link = "GruvboxAqua" },
  typescriptLabel = { link = "GruvboxAqua" },
  typescriptFuncKeyword = { link = "GruvboxAqua" },
  typescriptIdentifier = { link = "GruvboxOrange" },
  typescriptBraces = { link = "GruvboxFg1" },
  typescriptEndColons = { link = "GruvboxFg1" },
  typescriptDOMObjects = { link = "GruvboxFg1" },
  typescriptAjaxMethods = { link = "GruvboxFg1" },
  typescriptLogicSymbols = { link = "GruvboxFg1" },
  typescriptDocSeeTag = { link = "Comment" },
  typescriptDocParam = { link = "Comment" },
  typescriptDocTags = { link = "vimCommentTitle" },
  typescriptGlobalObjects = { link = "GruvboxFg1" },
  typescriptParens = { link = "GruvboxFg3" },
  typescriptOpSymbols = { link = "GruvboxFg3" },
  typescriptHtmlElemProperties = { link = "GruvboxFg1" },
  typescriptNull = { link = "GruvboxPurple" },
  typescriptInterpolationDelimiter = { link = "GruvboxAqua" },
  -- purescript
  purescriptModuleKeyword = { link = "GruvboxAqua" },
  purescriptModuleName = { link = "GruvboxFg1" },
  purescriptWhere = { link = "GruvboxAqua" },
  purescriptDelimiter = { link = "GruvboxFg4" },
  purescriptType = { link = "GruvboxFg1" },
  purescriptImportKeyword = { link = "GruvboxAqua" },
  purescriptHidingKeyword = { link = "GruvboxAqua" },
  purescriptAsKeyword = { link = "GruvboxAqua" },
  purescriptStructure = { link = "GruvboxAqua" },
  purescriptOperator = { link = "GruvboxBlue" },
  purescriptTypeVar = { link = "GruvboxFg1" },
  purescriptConstructor = { link = "GruvboxFg1" },
  purescriptFunction = { link = "GruvboxFg1" },
  purescriptConditional = { link = "GruvboxOrange" },
  purescriptBacktick = { link = "GruvboxOrange" },
  -- coffescript
  coffeeExtendedOp = { link = "GruvboxFg3" },
  coffeeSpecialOp = { link = "GruvboxFg3" },
  coffeeCurly = { link = "GruvboxOrange" },
  coffeeParen = { link = "GruvboxFg3" },
  coffeeBracket = { link = "GruvboxOrange" },
  -- ruby
  rubyStringDelimiter = { link = "GruvboxGreen" },
  rubyInterpolationDelimiter = { link = "GruvboxAqua" },
  rubyDefinedOperator = { link = "rubyKeyword" },
  -- objc
  objcTypeModifier = { link = "GruvboxRed" },
  objcDirective = { link = "GruvboxBlue" },
  -- go
  goDirective = { link = "GruvboxAqua" },
  goConstants = { link = "GruvboxPurple" },
  goDeclaration = { link = "GruvboxRed" },
  goDeclType = { link = "GruvboxBlue" },
  goBuiltins = { link = "GruvboxOrange" },
  -- lua
  luaIn = { link = "GruvboxRed" },
  luaFunction = { link = "GruvboxAqua" },
  luaTable = { link = "GruvboxOrange" },
  -- moonscript
  moonSpecialOp = { link = "GruvboxFg3" },
  moonExtendedOp = { link = "GruvboxFg3" },
  moonFunction = { link = "GruvboxFg3" },
  moonObject = { link = "GruvboxYellow" },
  -- java
  javaAnnotation = { link = "GruvboxBlue" },
  javaDocTags = { link = "GruvboxAqua" },
  javaCommentTitle = { link = "vimCommentTitle" },
  javaParen = { link = "GruvboxFg3" },
  javaParen1 = { link = "GruvboxFg3" },
  javaParen2 = { link = "GruvboxFg3" },
  javaParen3 = { link = "GruvboxFg3" },
  javaParen4 = { link = "GruvboxFg3" },
  javaParen5 = { link = "GruvboxFg3" },
  javaOperator = { link = "GruvboxOrange" },
  javaVarArg = { link = "GruvboxGreen" },
  -- elixir
  elixirDocString = { link = "Comment" },
  elixirStringDelimiter = { link = "GruvboxGreen" },
  elixirInterpolationDelimiter = { link = "GruvboxAqua" },
  elixirModuleDeclaration = { link = "GruvboxYellow" },
  -- scala
  scalaNameDefinition = { link = "GruvboxFg1" },
  scalaCaseFollowing = { link = "GruvboxFg1" },
  scalaCapitalWord = { link = "GruvboxFg1" },
  scalaTypeExtension = { link = "GruvboxFg1" },
  scalaKeyword = { link = "GruvboxRed" },
  scalaKeywordModifier = { link = "GruvboxRed" },
  scalaSpecial = { link = "GruvboxAqua" },
  scalaOperator = { link = "GruvboxFg1" },
  scalaTypeDeclaration = { link = "GruvboxYellow" },
  scalaTypeTypePostDeclaration = { link = "GruvboxYellow" },
  scalaInstanceDeclaration = { link = "GruvboxFg1" },
  scalaInterpolation = { link = "GruvboxAqua" },
  -- markdown
  markdownItalic = { fg = colors.fg3, italic = config.italic },
  markdownBold = { fg = colors.fg3, bold = config.bold },
  markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = config.italic },
  markdownH1 = { link = "GruvboxGreenBold" },
  markdownH2 = { link = "GruvboxGreenBold" },
  markdownH3 = { link = "GruvboxYellowBold" },
  markdownH4 = { link = "GruvboxYellowBold" },
  markdownH5 = { link = "GruvboxYellow" },
  markdownH6 = { link = "GruvboxYellow" },
  markdownCode = { link = "GruvboxAqua" },
  markdownCodeBlock = { link = "GruvboxAqua" },
  markdownCodeDelimiter = { link = "GruvboxAqua" },
  markdownBlockquote = { link = "GruvboxGray" },
  markdownListMarker = { link = "GruvboxGray" },
  markdownOrderedListMarker = { link = "GruvboxGray" },
  markdownRule = { link = "GruvboxGray" },
  markdownHeadingRule = { link = "GruvboxGray" },
  markdownUrlDelimiter = { link = "GruvboxFg3" },
  markdownLinkDelimiter = { link = "GruvboxFg3" },
  markdownLinkTextDelimiter = { link = "GruvboxFg3" },
  markdownHeadingDelimiter = { link = "GruvboxOrange" },
  markdownUrl = { link = "GruvboxPurple" },
  markdownUrlTitleDelimiter = { link = "GruvboxGreen" },
  markdownLinkText = { fg = colors.gray, underline = config.underline },
  markdownIdDeclaration = { link = "markdownLinkText" },
  -- haskell
  haskellType = { link = "GruvboxBlue" },
  haskellIdentifier = { link = "GruvboxAqua" },
  haskellSeparator = { link = "GruvboxFg4" },
  haskellDelimiter = { link = "GruvboxOrange" },
  haskellOperators = { link = "GruvboxPurple" },
  haskellBacktick = { link = "GruvboxOrange" },
  haskellStatement = { link = "GruvboxPurple" },
  haskellConditional = { link = "GruvboxPurple" },
  haskellLet = { link = "GruvboxRed" },
  haskellDefault = { link = "GruvboxRed" },
  haskellWhere = { link = "GruvboxRed" },
  haskellBottom = { link = "GruvboxRedBold" },
  haskellImportKeywords = { link = "GruvboxPurpleBold" },
  haskellDeclKeyword = { link = "GruvboxOrange" },
  haskellDecl = { link = "GruvboxOrange" },
  haskellDeriving = { link = "GruvboxPurple" },
  haskellAssocType = { link = "GruvboxAqua" },
  haskellNumber = { link = "GruvboxAqua" },
  haskellPragma = { link = "GruvboxRedBold" },
  haskellTH = { link = "GruvboxAquaBold" },
  haskellForeignKeywords = { link = "GruvboxGreen" },
  haskellKeyword = { link = "GruvboxRed" },
  haskellFloat = { link = "GruvboxAqua" },
  haskellInfix = { link = "GruvboxPurple" },
  haskellQuote = { link = "GruvboxGreenBold" },
  haskellShebang = { link = "GruvboxYellowBold" },
  haskellLiquid = { link = "GruvboxPurpleBold" },
  haskellQuasiQuoted = { link = "GruvboxBlueBold" },
  haskellRecursiveDo = { link = "GruvboxPurple" },
  haskellQuotedType = { link = "GruvboxRed" },
  haskellPreProc = { link = "GruvboxFg4" },
  haskellTypeRoles = { link = "GruvboxRedBold" },
  haskellTypeForall = { link = "GruvboxRed" },
  haskellPatternKeyword = { link = "GruvboxBlue" },
  -- json
  jsonKeyword = { link = "GruvboxGreen" },
  jsonQuote = { link = "GruvboxGreen" },
  jsonBraces = { link = "GruvboxFg1" },
  jsonString = { link = "GruvboxFg1" },
  -- mail
  mailQuoted1 = { link = "GruvboxAqua" },
  mailQuoted2 = { link = "GruvboxPurple" },
  mailQuoted3 = { link = "GruvboxYellow" },
  mailQuoted4 = { link = "GruvboxGreen" },
  mailQuoted5 = { link = "GruvboxRed" },
  mailQuoted6 = { link = "GruvboxOrange" },
  mailSignature = { link = "Comment" },
  -- c#
  csBraces = { link = "GruvboxFg1" },
  csEndColon = { link = "GruvboxFg1" },
  csLogicSymbols = { link = "GruvboxFg1" },
  csParens = { link = "GruvboxFg3" },
  csOpSymbols = { link = "GruvboxFg3" },
  csInterpolationDelimiter = { link = "GruvboxFg3" },
  csInterpolationAlignDel = { link = "GruvboxAquaBold" },
  csInterpolationFormat = { link = "GruvboxAqua" },
  csInterpolationFormatDel = { link = "GruvboxAquaBold" },
  -- rust btw
  rustSigil = { link = "GruvboxOrange" },
  rustEscape = { link = "GruvboxAqua" },
  rustStringContinuation = { link = "GruvboxAqua" },
  rustEnum = { link = "GruvboxAqua" },
  rustStructure = { link = "GruvboxAqua" },
  rustModPathSep = { link = "GruvboxFg2" },
  rustCommentLineDoc = { link = "Comment" },
  rustDefault = { link = "GruvboxAqua" },
  -- ocaml
  ocamlOperator = { link = "GruvboxFg1" },
  ocamlKeyChar = { link = "GruvboxOrange" },
  ocamlArrow = { link = "GruvboxOrange" },
  ocamlInfixOpKeyword = { link = "GruvboxRed" },
  ocamlConstructor = { link = "GruvboxOrange" },
  -- lspsaga.nvim
  LspSagaCodeActionTitle = { link = "Title" },
  LspSagaCodeActionBorder = { link = "GruvboxFg1" },
  LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
  LspSagaLspFinderBorder = { link = "GruvboxFg1" },
  LspSagaAutoPreview = { link = "GruvboxOrange" },
  TargetWord = { fg = colors.blue, bold = config.bold },
  FinderSeparator = { link = "GruvboxAqua" },
  LspSagaDefPreviewBorder = { link = "GruvboxBlue" },
  LspSagaHoverBorder = { link = "GruvboxOrange" },
  LspSagaRenameBorder = { link = "GruvboxBlue" },
  LspSagaDiagnosticSource = { link = "GruvboxOrange" },
  LspSagaDiagnosticBorder = { link = "GruvboxPurple" },
  LspSagaDiagnosticHeader = { link = "GruvboxGreen" },
  LspSagaSignatureHelpBorder = { link = "GruvboxGreen" },
  SagaShadow = { link = "GruvboxBg0" },

  -- dashboard-nvim
  DashboardShortCut = { link = "GruvboxOrange" },
  DashboardHeader = { link = "GruvboxAqua" },
  DashboardCenter = { link = "GruvboxYellow" },
  DashboardFooter = { fg = colors.purple, italic = config.italic },
  -- mason
  MasonHighlight = { fg = palette.neutral_blue },
  MasonHighlightBlock = { fg = palette.dark0, bg = palette.neutral_blue },
  MasonHighlightBlockBold = { fg = palette.dark0, bg = palette.neutral_blue, bold = true },
  MasonHighlightSecondary = { fg = palette.neutral_yellow },
  MasonHighlightBlockSecondary = { fg = palette.dark0, bg = palette.neutral_yellow },
  MasonHighlightBlockBoldSecondary = { fg = palette.dark0, bg = palette.neutral_yellow, bold = true },
  MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
  MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
  MasonMuted = { fg = palette.light4 },
  MasonMutedBlock = { fg = palette.dark0, bg = palette.light4 },
  MasonMutedBlockBold = { fg = palette.dark0, bg = palette.light4, bold = true },
  -- lsp-inlayhints.nvim
  LspInlayHint = { link = "comment" },
  -- carbon.nvim
  CarbonFile = { link = "GruvboxFg1" },
  CarbonExe = { link = "GruvboxYellow" },
  CarbonSymlink = { link = "GruvboxAqua" },
  CarbonBrokenSymlink = { link = "GruvboxRed" },
  CarbonIndicator = { link = "GruvboxGray" },
  CarbonDanger = { link = "GruvboxRed" },
  CarbonPending = { link = "GruvboxYellow" },
}

return groups
