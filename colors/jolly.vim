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
else
	let s:JollyColors.Normal	= {"fg": "white", "bg": "black", "guifg": "#dcdcdc", "guibg": "#1B141B"}
endif

"syntax"
let s:JollyColors.Comment		= {"fg": "white", "guifg": "#4EB13E"}
let s:JollyColors.Constant		= {"fg": "white", "guifg": "#ff4056"}

let s:JollyColors.Identifier	= {"fg": "white", "guifg": "#b4e4fe"}
let s:JollyColors.Function		= {"fg": "white", "guifg": "#5d5dd8"}

let s:JollyColors.Statement		= {"fg": "white", "guifg": "#AE81FF"}
let s:JollyColors.Conditional	= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.Repeat		= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.Label			= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.Operator		= {"fg": "white", "guifg": "#DCDCDC"}
let s:JollyColors.Exception		= {"fg": "white", "guifg": "#9039c6"}

let s:JollyColors.PreProc		= {"fg": "white", "guifg": "#9039c6"}
let s:JollyColors.Include		= {"fg": "white", "guifg": "#9b9b9b"}

let s:JollyColors.Type			= {"fg": "white", "guifg": "#F92672"}
let s:JollyColors.Structure		= {"fg": "white", "guifg": "#AE81FF"}

let s:JollyColors.Special		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Underlined	= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Ignore		= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Error			= {"fg": "", "bg": "", "guifg": "#", "guibg": "#"}
let s:JollyColors.Todo			= {"fg": "white", "bg": "green", "guifg": "#1B141B", "guibg": "#4EB13E"}

let s:JollyColors.Folded	= {"fg": "black", "bg": "white", "guifg": "#ffffff", "guibg": "#594359"}
let s:JollyColors.Visual	= {"bg": "white", "guibg": "#594359"}
let s:JollyColors.Search	= {"fg": "black", "bg": "white", "guifg": "#1B141B", "guibg": "#F92672"}
let s:JollyColors.VertSplit = {"fg": "white", "bg": "black", "guifg": "#1B141B", "guibg": "#FFFFFF"}
let s:JollyColors.LineNr	= {"fg": "white", "guifg": "#2b91af"}
let s:JollyColors.Pmenu		= {"fg": "white", "bg": "black", "guifg": "#ffffff", "guibg": "#231a23"}
let s:JollyColors.PmenuSel	= {"fg": "white", "bg": "black", "guifg": "#ffffff", "guibg": "#594359"}

"lsp cxx highlight
if exists("g:lsp_cxx_hl_loaded")
	let s:JollyColors.LspCxxHlSymNamespace	= {"fg": "white", "guifg": "#fbffa0"}
	let s:JollyColors.LspCxxHlSymField		= {"fg": "white", "guifg": "#b4e4fe"}
endif

"NerdTree
if exists("g:NERDTreePath")
	let s:JollyColors.NERDTreeHelp		= {"fg": "white", "guifg": "#9b9b9b"}
	let s:JollyColors.NERDTreeUp		= {"fg": "white", "guifg": "#9b9b9b"}
	let s:JollyColors.NERDTreeCWD		= {"fg": "white", "guifg": "#F92672"}
	let s:JollyColors.NERDTreeDir		= {"fg": "white", "guifg": "#5d5dd8"}
	let s:JollyColors.NERDTreeDirSlash	= {"fg": "white", "guifg": "#ff4056"}
	let s:JollyColors.NERDTreeOpenable	= {"fg": "white", "guifg": "#2b91af"}
	let s:JollyColors.NERDTreeClosable	= {"fg": "white", "guifg": "#2b91af"}
endif

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

call s:HighlightFn("PreProc")
call s:HighlightFn("Include")

call s:HighlightFn("Type")
call s:HighlightFn("Structure")

call s:HighlightFn("Identifier")
call s:HighlightFn("Function")

call s:HighlightFn("Statement")
call s:HighlightFn("Conditional")
call s:HighlightFn("Repeat")
call s:HighlightFn("Label")
call s:HighlightFn("Operator")
call s:HighlightFn("Exception")

call s:HighlightFn("Todo")

call s:HighlightFn("Visual")
call s:HighlightFn("Search")
call s:HighlightFn("Folded")
call s:HighlightFn("LineNr")
call s:HighlightFn("VertSplit")
call s:HighlightFn("Pmenu")
call s:HighlightFn("PmenuSel")

if exists("g:lsp_cxx_hl_loaded")
	call s:HighlightFn("LspCxxHlSymNamespace")
	call s:HighlightFn("LspCxxHlSymField")
endif

if exists("g:NERDTreePath")
	call s:HighlightFn("NERDTreeHelp")
	call s:HighlightFn("NERDTreeUp")
	call s:HighlightFn("NERDTreeCWD")
	call s:HighlightFn("NERDTreeDir")
	call s:HighlightFn("NERDTreeDirSlash")
	call s:HighlightFn("NERDTreeOpenable")
	call s:HighlightFn("NERDTreeClosable")
endif

unlet s:JollyColors
