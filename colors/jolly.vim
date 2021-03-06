"Super awesome Jolly theme! :3

if !has("gui_running") && &t_Co != 256
	finish
endif

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "JollyTheme"

let s:JollyColors = {}

if get(g:, "JollyTransparentBackground", 0) > 0
	let s:JollyColors.Normal	= {"fg": "white", "guifg": "#dcdcdc"}
	let s:JollyColors.VertSplit = {"cterm": "NONE", "fg": "38", "bg": "NONE",
				\	"gui": "NONE", "guifg": "#232526", "guibg": "NONE"}
else
	let s:JollyColors.Normal	= {"fg": "white", "bg": "black", "guifg": "#dcdcdc", "guibg": "#1B141B"}
	let s:JollyColors.VertSplit = {"fg": "38", "bg": "38", "guifg": "#1B141B", "guibg": "#FFFFFF"}
endif

"syntax"
let s:JollyColors.Comment		= {"fg":  "71", "guifg": "#4EB13E"}

let s:JollyColors.Constant		= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.String		= {"fg": "197", "guifg": "#ff4056"}
let s:JollyColors.Character		= {"fg": "197", "guifg": "#ff4056"}
let s:JollyColors.Number		= {"fg": "197", "guifg": "#ff4056"}
let s:JollyColors.Boolean		= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.Float			= {"fg": "197", "guifg": "#ff4056"}

let s:JollyColors.Identifier	= {"fg": "153", "guifg": "#b4e4fe"}
let s:JollyColors.Function		= {"fg":  "62", "guifg": "#5d5dd8"}

let s:JollyColors.Statement		= {"fg": "98", "guifg": "#9039c6"}
let s:JollyColors.Conditional	= {"fg": "98", "guifg": "#9039c6"}
let s:JollyColors.Repeat		= {"fg": "98", "guifg": "#9039c6"}
let s:JollyColors.Label			= {"fg": "98", "guifg": "#9039c6"}
let s:JollyColors.Operator		= {"fg": "white", "guifg": "#DCDCDC"}
let s:JollyColors.Exception		= {"fg": "98", "guifg": "#9039c6"}

let s:JollyColors.PreProc		= {"fg":  "92", "guifg": "#9039c6"}
let s:JollyColors.Include		= {"fg": "245", "guifg": "#9b9b9b"}

let s:JollyColors.Type			= {"fg": "98", "guifg": "#9039c6"}
let s:JollyColors.Structure		= {"fg": "98", "guifg": "#9039c6"}

let s:JollyColors.Special		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Underlined	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Ignore		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Error			= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Todo			= {"fg": "white", "bg": "28", "guifg": "#1B141B", "guibg": "#4EB13E"}

"Misc"
let s:JollyColors.Folded		= {"fg": "white", "bg": "54", "guifg": "#ffffff", "guibg": "#594359"}
let s:JollyColors.Visual		= {"bg": "242", "guibg": "#594359"}
let s:JollyColors.Search		= {"fg": "black", "bg": "198", "guifg": "#1B141B", "guibg": "#F92672"}
let s:JollyColors.LineNr		= {"fg":  "38", "guifg": "#0089b7"}
let s:JollyColors.Pmenu			= {"fg": "white", "bg": "92", "guifg": "#ffffff", "guibg": "#231a23"}
let s:JollyColors.PmenuSel		= {"fg": "white", "bg": "62", "guifg": "#ffffff", "guibg": "#594359"}

"colors based off of lightline molokai theme"
let s:JollyColors.StatusLine	= {"fg": "233", "guifg": "#232526"}
let s:JollyColors.StatusLineNC	= {"fg": "233", "guifg": "#232526"}
let s:JollyColors.EndOfBuffer	= {"fg":  "38", "guifg": "#232526"}

"NerdTree
let s:JollyColors.NERDTreeHelp		= {"fg": "white", "guifg": "#9b9b9b"}
let s:JollyColors.NERDTreeUp		= {"fg": "white", "guifg": "#9b9b9b"}
let s:JollyColors.NERDTreeCWD		= {"fg": "white", "guifg": "#F92672"}
let s:JollyColors.NERDTreeDir		= {"fg": "white", "guifg": "#5d5dd8"}
let s:JollyColors.NERDTreeDirSlash	= {"fg": "white", "guifg": "#5d5dd8"}
let s:JollyColors.NERDTreeOpenable	= {"fg": "white", "guifg": "#0089b7"}
let s:JollyColors.NERDTreeClosable	= {"fg": "white", "guifg": "#0089b7"}

"treesitter"
let s:JollyColors.TSNamespace	= {"fg": "white", "guifg": "#fbffa0"}
let s:JollyColors.TSType		= {"fg": "white", "guifg": "#F92672"}
let s:JollyColors.TSText		= {"fg": "white", "guifg": "#dcdcdc"}

func s:HighlightFn(group)
	let l:colors = get(s:JollyColors, a:group)

	let l:highlightCmd = 'hi ' . a:group . ' '

	if has_key(l:colors, "fg")
		let l:highlightCmd .= 'guifg=' . get(l:colors, "guifg") . ' '
		let l:highlightCmd .= 'ctermfg=' . get(l:colors, "fg") . ' '
	endif

	if has_key(l:colors, "bg")
		let l:highlightCmd .= 'guibg=' . get(l:colors, "guibg") . ' '
		let l:highlightCmd .= 'ctermbg=' . get(l:colors, "bg") . ' '
	endif

	if has_key(l:colors, "cterm")
		let l:highlightCmd .= 'gui=' . get(l:colors, "gui") . ' '
		let l:highlightCmd .= 'cterm=' . get(l:colors, "cterm") . ' '
	endif

	if has_key(l:colors, "guisp")
		let l:highlightCmd .= 'guisp=' . get(l:colors, "guisp") . ' '
	endif

	execute l:highlightCmd
	unlet l:highlightCmd
	unlet l:colors
endfunc

call s:HighlightFn("Normal")
call s:HighlightFn("Comment")

call s:HighlightFn("Constant")
call s:HighlightFn("String")
call s:HighlightFn("Character")
call s:HighlightFn("Number")
call s:HighlightFn("Boolean")
call s:HighlightFn("Float")

call s:HighlightFn("Identifier")
call s:HighlightFn("Function")

call s:HighlightFn("Statement")
call s:HighlightFn("Conditional")
call s:HighlightFn("Repeat")
call s:HighlightFn("Label")
call s:HighlightFn("Operator")
call s:HighlightFn("Exception")

call s:HighlightFn("PreProc")
call s:HighlightFn("Include")

call s:HighlightFn("Type")
call s:HighlightFn("Structure")

call s:HighlightFn("Todo")

call s:HighlightFn("Visual")
call s:HighlightFn("Search")
call s:HighlightFn("Folded")
call s:HighlightFn("LineNr")
call s:HighlightFn("VertSplit")
call s:HighlightFn("Pmenu")
call s:HighlightFn("PmenuSel")
call s:HighlightFn("StatusLine")
call s:HighlightFn("StatusLineNC")
call s:HighlightFn("EndOfBuffer")

call s:HighlightFn("NERDTreeHelp")
call s:HighlightFn("NERDTreeUp")
call s:HighlightFn("NERDTreeCWD")
call s:HighlightFn("NERDTreeDir")
call s:HighlightFn("NERDTreeDirSlash")
call s:HighlightFn("NERDTreeOpenable")
call s:HighlightFn("NERDTreeClosable")

call s:HighlightFn("TSNamespace")
call s:HighlightFn("TSType")

unlet s:JollyColors
