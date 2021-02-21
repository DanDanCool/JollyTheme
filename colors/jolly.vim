"Super awesome Jolly theme! :3

if !has("gui_running") && &t_Co != 256
	finish
endif

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="JollyTheme"

let s:JollyColors = {}

let s:JollyColors.Normal	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Folded	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Visual	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Search	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.VertSplit = {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}

"syntax"
let s:JollyColors.Comment		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Constant		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.String		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Character		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Identifier	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Statement		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Operator		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.PreProc		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Type			= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Structure		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Special		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Underlined	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Ignore		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Error			= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Todo			= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}

func s:HighlightFn(group)
	let l:highlightCmd=""
endfunc
