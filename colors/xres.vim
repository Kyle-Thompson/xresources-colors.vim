" xresources-colors.vim -- Xresources based vim colorscheme.
" Author:       Kyle Thompson
" Description:  A colorscheme based on the colors set in Xresources. Color
"               layout copied from Base16-vim.

" let s:gui00 = '161b1d'
" let s:gui01 = '1f292e'
" let s:gui02 = '516d7b'
" let s:gui03 = '5a7b8c'
" let s:gui04 = '7195a8'
" let s:gui05 = '7ea2b4'
" let s:gui06 = 'c1e4f6'
" let s:gui07 = 'ebf8ff'
" let s:gui08 = 'd22d72'
" let s:gui09 = '935c25'
" let s:gui0A = '8a8a0f'
" let s:gui0B = '568c3b'
" let s:gui0C = '2d8f6f'
" let s:gui0D = '257fad'
" let s:gui0E = '6b6bb8'
" let s:gui0F = 'b72dd2'

" Theme setup
hi clear
syntax reset
let g:colors_name = "xres"

" Highlighting function
function! g:Base16hi(group, foreground, background, attr, guisp)
  let l:cmd = ["hi", a:group]

  if a:foreground != ""
    call extend(l:cmd, ["ctermfg=".a:foreground])
  endif
  if a:background != ""
    call extend(l:cmd, ["ctermbg=".a:background])
  endif
  if a:attr != ""
    call extend(l:cmd, ["gui=".a:attr, "cterm=".a:attr])
  endif
  if a:guisp != ""
    call add(l:cmd, "guisp=".a:attr)
    exec "hi " . a:group . " guisp=" . a:guisp
  endif

  exec join(l:cmd, " ")
endfunction


fun <sid>hi(group, foreground, background, attr, guisp)
  call Base16hi(a:group, a:foreground, a:background, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",       "08", "00", "",     "")
call <sid>hi("Bold",         "",   "",   "bold", "")
call <sid>hi("Debug",        "01", "",   "",     "")
call <sid>hi("Directory",    "04", "",   "",     "")
call <sid>hi("Error",        "00", "01", "",     "")
call <sid>hi("ErrorMsg",     "01", "00", "",     "")
call <sid>hi("Exception",    "01", "",   "",     "")
call <sid>hi("FoldColumn",   "06", "10", "",     "")
call <sid>hi("Folded",       "08", "10", "",     "")
call <sid>hi("IncSearch",    "10", "09", "none", "")
call <sid>hi("Italic",       "",   "",   "none", "")
call <sid>hi("Macro",        "01", "",   "",     "")
call <sid>hi("MatchParen",   "",   "08", "",     "")
call <sid>hi("ModeMsg",      "02", "",   "",     "")
call <sid>hi("MoreMsg",      "02", "",   "",     "")
call <sid>hi("Question",     "04", "",   "",     "")
call <sid>hi("Search",       "08", "03", "",     "")
call <sid>hi("Substitute",   "08", "03", "none", "")
call <sid>hi("SpecialKey",   "08", "",   "",     "")
call <sid>hi("TooLong",      "01", "",   "",     "")
call <sid>hi("Underlined",   "01", "",   "",     "")
call <sid>hi("Visual",       "",   "11", "",     "")
call <sid>hi("VisualNOS",    "01", "",   "",     "")
call <sid>hi("WarningMsg",   "01", "",   "",     "")
call <sid>hi("WildMenu",     "01", "",   "",     "")
call <sid>hi("Title",        "04", "",   "none", "")
call <sid>hi("Conceal",      "04", "00", "",     "")
call <sid>hi("Cursor",       "00", "07", "",     "")
call <sid>hi("NonText",      "08", "",   "",     "")
call <sid>hi("LineNr",       "08", "10", "",     "")
call <sid>hi("SignColumn",   "08", "10", "",     "")
call <sid>hi("StatusLine",   "12", "11", "none", "")
call <sid>hi("StatusLineNC", "08", "10", "none", "")
call <sid>hi("VertSplit",    "11", "11", "none", "")
call <sid>hi("ColorColumn",  "",   "10", "none", "")
call <sid>hi("CursorColumn", "",   "10", "none", "")
call <sid>hi("CursorLine",   "",   "10", "none", "")
call <sid>hi("CursorLineNr", "12", "10", "",     "")
call <sid>hi("QuickFixLine", "",   "10", "none", "")
call <sid>hi("PMenu",        "07", "10", "none", "")
call <sid>hi("PMenuSel",     "10", "07", "",     "")
call <sid>hi("TabLine",      "08", "10", "none", "")
call <sid>hi("TabLineFill",  "08", "10", "none", "")
call <sid>hi("TabLineSel",   "02", "10", "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      "09", "",   "",     "")
call <sid>hi("Character",    "01", "",   "",     "")
call <sid>hi("Comment",      "00", "",   "",     "")
call <sid>hi("Conditional",  "05", "",   "",     "")
call <sid>hi("Constant",     "09", "",   "",     "")
call <sid>hi("Define",       "05", "",   "none", "")
call <sid>hi("Delimiter",    "14", "",   "",     "")
call <sid>hi("Float",        "09", "",   "",     "")
call <sid>hi("Function",     "04", "",   "",     "")
call <sid>hi("Identifier",   "01", "",   "none", "")
call <sid>hi("Include",      "04", "",   "",     "")
call <sid>hi("Keyword",      "05", "",   "",     "")
call <sid>hi("Label",        "03", "",   "",     "")
call <sid>hi("Number",       "09", "",   "",     "")
call <sid>hi("Operator",     "07", "",   "none", "")
call <sid>hi("PreProc",      "03", "",   "",     "")
call <sid>hi("Repeat",       "03", "",   "",     "")
call <sid>hi("Special",      "06", "",   "",     "")
call <sid>hi("SpecialChar",  "14", "",   "",     "")
call <sid>hi("Statement",    "01", "",   "",     "")
call <sid>hi("StorageClass", "03", "",   "",     "")
call <sid>hi("String",       "02", "",   "",     "")
call <sid>hi("Structure",    "05", "",   "",     "")
call <sid>hi("Tag",          "03", "",   "",     "")
call <sid>hi("Todo",         "03", "10", "",     "")
call <sid>hi("Type",         "03", "",   "none", "")
call <sid>hi("Typedef",      "03", "",   "",     "")

" C highlighting
call <sid>hi("cOperator",   "06", "", "", "")
call <sid>hi("cPreCondit",  "05", "", "", "")

" C# highlighting
call <sid>hi("csClass",                 "03", "", "", "")
call <sid>hi("csAttribute",             "03", "", "", "")
call <sid>hi("csModifier",              "05", "", "", "")
call <sid>hi("csType",                  "01", "", "", "")
call <sid>hi("csUnspecifiedStatement",  "04", "", "", "")
call <sid>hi("csContextualStatement",   "05", "", "", "")
call <sid>hi("csNewDecleration",        "01", "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      "07", "", "", "")
call <sid>hi("cssClassName",   "05", "", "", "")
call <sid>hi("cssColor",       "06", "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      "02", "10", "", "")
call <sid>hi("DiffChange",   "08", "10", "", "")
call <sid>hi("DiffDelete",   "01", "10", "", "")
call <sid>hi("DiffText",     "04", "10", "", "")
call <sid>hi("DiffAdded",    "02", "00", "", "")
call <sid>hi("DiffFile",     "01", "00", "", "")
call <sid>hi("DiffNewFile",  "02", "00", "", "")
call <sid>hi("DiffLine",     "04", "00", "", "")
call <sid>hi("DiffRemoved",  "01", "00", "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       "01", "", "", "")
call <sid>hi("gitcommitSummary",        "02", "", "", "")
call <sid>hi("gitcommitComment",        "08", "", "", "")
call <sid>hi("gitcommitUntracked",      "08", "", "", "")
call <sid>hi("gitcommitDiscarded",      "08", "", "", "")
call <sid>hi("gitcommitSelected",       "08", "", "", "")
call <sid>hi("gitcommitHeader",         "05", "", "", "")
call <sid>hi("gitcommitSelectedType",   "04", "", "", "")
call <sid>hi("gitcommitUnmergedType",   "04", "", "", "")
call <sid>hi("gitcommitDiscardedType",  "04", "", "", "")
call <sid>hi("gitcommitBranch",         "09", "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  "03", "", "", "")
call <sid>hi("gitcommitUnmergedFile",   "01", "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  "01", "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   "02", "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     "02", "10", "", "")
call <sid>hi("GitGutterChange",  "04", "10", "", "")
call <sid>hi("GitGutterDelete",  "01", "10", "", "")
call <sid>hi("GitGutterChangeDelete",  "05", "10", "", "")

" HTML highlighting
call <sid>hi("htmlBold",    "03", "", "", "")
call <sid>hi("htmlItalic",  "05", "", "", "")
call <sid>hi("htmlEndTag",  "07", "", "", "")
call <sid>hi("htmlTag",     "07", "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        "07", "", "", "")
call <sid>hi("javaScriptBraces",  "07", "", "", "")
call <sid>hi("javaScriptNumber",  "09", "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          "04", "", "", "")
call <sid>hi("jsStatement",         "05", "", "", "")
call <sid>hi("jsReturn",            "05", "", "", "")
call <sid>hi("jsThis",              "01", "", "", "")
call <sid>hi("jsClassDefinition",   "03", "", "", "")
call <sid>hi("jsFunction",          "05", "", "", "")
call <sid>hi("jsFuncName",          "04", "", "", "")
call <sid>hi("jsFuncCall",          "04", "", "", "")
call <sid>hi("jsClassFuncName",     "04", "", "", "")
call <sid>hi("jsClassMethodType",   "05", "", "", "")
call <sid>hi("jsRegexpString",      "06", "", "", "")
call <sid>hi("jsGlobalObjects",     "03", "", "", "")
call <sid>hi("jsGlobalNodeObjects", "03", "", "", "")
call <sid>hi("jsExceptions",        "03", "", "", "")
call <sid>hi("jsBuiltins",          "03", "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  "03", "", "", "")
call <sid>hi("mailQuoted2",  "02", "", "", "")
call <sid>hi("mailQuoted3",  "05", "", "", "")
call <sid>hi("mailQuoted4",  "06", "", "", "")
call <sid>hi("mailQuoted5",  "04", "", "", "")
call <sid>hi("mailQuoted6",  "03", "", "", "")
call <sid>hi("mailURL",      "04", "", "", "")
call <sid>hi("mailEmail",    "04", "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",             "02", "",   "", "")
call <sid>hi("markdownError",            "07", "00", "", "")
call <sid>hi("markdownCodeBlock",        "02", "",   "", "")
call <sid>hi("markdownHeadingDelimiter", "04", "",   "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  "04", "", "", "")
call <sid>hi("NERDTreeExecFile",  "07", "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  "07", "", "", "")
call <sid>hi("phpComparison",      "07", "", "", "")
call <sid>hi("phpParent",          "07", "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  "05", "", "", "")
call <sid>hi("pythonRepeat",    "05", "", "", "")
call <sid>hi("pythonInclude",   "05", "", "", "")
call <sid>hi("pythonStatement", "05", "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               "04", "", "", "")
call <sid>hi("rubyConstant",                "03", "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  "14", "", "", "")
call <sid>hi("rubyRegexp",                  "06", "", "", "")
call <sid>hi("rubySymbol",                  "02", "", "", "")
call <sid>hi("rubyStringDelimiter",         "02", "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     "01", "", "", "")
call <sid>hi("sassClassChar",  "09", "", "", "")
call <sid>hi("sassInclude",    "05", "", "", "")
call <sid>hi("sassMixing",     "05", "", "", "")
call <sid>hi("sassMixinName",  "04", "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     "02", "10", "", "")
call <sid>hi("SignifySignChange",  "04", "10", "", "")
call <sid>hi("SignifySignDelete",  "01", "10", "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "00", "undercurl", s:gui08)
call <sid>hi("SpellLocal",   "", "00", "undercurl", s:gui0C)
call <sid>hi("SpellCap",     "", "00", "undercurl", s:gui0D)
call <sid>hi("SpellRare",    "", "00", "undercurl", s:gui0E)

" Startify highlighting
call <sid>hi("StartifyBracket",  "08", "", "", "")
call <sid>hi("StartifyFile",     "15", "", "", "")
call <sid>hi("StartifyFooter",   "08", "", "", "")
call <sid>hi("StartifyHeader",   "02", "", "", "")
call <sid>hi("StartifyNumber",   "09", "", "", "")
call <sid>hi("StartifyPath",     "08", "", "", "")
call <sid>hi("StartifySection",  "05", "", "", "")
call <sid>hi("StartifySelect",   "06", "", "", "")
call <sid>hi("StartifySlash",    "08", "", "", "")
call <sid>hi("StartifySpecial",  "08", "", "", "")

echo "testing 123"
" Remove functions
" delf <sid>hi
