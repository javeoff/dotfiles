let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
imap <silent> <Plug>(cmpu-jump-backwards) =UltiSnips#JumpBackwards()
imap <silent> <Plug>(cmpu-jump-forwards) =UltiSnips#JumpForwards()
imap <silent> <Plug>(cmpu-expand) =[UltiSnips#CursorMoved(), UltiSnips#ExpandSnippet()][1]
imap <M-Bslash> <Plug>(codeium-complete)
imap <M-[> <Plug>(codeium-previous)
imap <M-]> <Plug>(codeium-next-or-complete)
imap <Plug>(codeium-complete) <Cmd>call codeium#Complete()
imap <Plug>(codeium-previous) <Cmd>call codeium#CycleCompletions(-1)
imap <Plug>(codeium-next-or-complete) <Cmd>call codeium#CycleOrComplete()
imap <Plug>(codeium-next) <Cmd>call codeium#CycleCompletions(1)
imap <Plug>(codeium-dismiss) <Cmd>call codeium#Clear()
cnoremap <silent> <C-F>c <Cmd>lua require("fzf-lua").command_history()
cnoremap <silent> <C-F> <Cmd>lua require("fzf-lua").command_history()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <C-P> pi
inoremap <C-H> <Left>
inoremap <C-L> <Right>
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <C-W> u
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\6", {mode = "n", auto = true})
nnoremap <silent> / <Cmd>lua require("fzf-lua").commands()
nnoremap <silent> k <Cmd>lua require("fzf-lua").keymaps()
nnoremap <silent> r <Cmd>lua require("fzf-lua").registers()
nnoremap <silent>  <Cmd>lua require("fzf-lua").changes({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent>  <Cmd>lua require("fzf-lua").oldfiles({ fzf_opts = { ['--height'] = "100%" }, winopts = { preview = { hidden = "hidden" }, win_height = 1, win_width = 1 } })
nnoremap <silent> h <Cmd>lua require("fzf-lua").oldfiles()
nnoremap <silent> t <Cmd>lua require("fzf-lua").tabs()
nnoremap <silent> m <Cmd>lua require("fzf-lua").marks()
nnoremap <silent>  <Cmd>lua require("fzf-lua").live_grep({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent> g <Cmd>lua require("fzf-lua").live_grep()
nnoremap <silent> ' <Cmd>lua require("fzf-lua").buffers()
nnoremap <silent>  <Cmd>lua require("fzf-lua").files({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent> f <Cmd>lua require("fzf-lua").files()
nnoremap <silent>  :MundoToggle
snoremap <silent>  "_c
nnoremap <nowait> 	d :Trouble document_diagnostics
nnoremap <nowait> 	o :TodoTrouble
nnoremap <nowait> 	t :TodoTrouble
nnoremap <nowait> 		 :ContextToggle
nnoremap <silent> 	, <
nnoremap <silent> 	 :tabnext
nnoremap <silent> 	e :e .envq
nnoremap <silent> 	c :splitjKj
nnoremap <silent> 	k k
nnoremap <silent> 	v :vsplitlHl
nnoremap <silent> 	l l
nnoremap <silent> 	h h
nnoremap <silent> 	j j
nnoremap <silent> 	. >
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
nnoremap <silent> <NL> 
nnoremap <silent>  
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("\12c", {mode = "n", auto = true})
nnoremap 1 :lua vim.lsp.buf.formatting()eslint
nnoremap l :lua vim.lsp.codelens.run()
nnoremap co :lua vim.lsp.buf.outgoing_calls()
nnoremap [ :lua require"illuminate".next_reference{reverse=true,wrap=true}
nnoremap h :lua vim.lsp.buf.hover()
nnoremap ci :lua vim.lsp.buf.incoming_calls()
nnoremap ) :lua vim.diagnostic.goto_next({ float = false })
nnoremap 4 :lua vim.lsp.buf.formatting()null-ls
nnoremap 2 :lua vim.lsp.buf.formatting()tsserver
nnoremap ] :lua require"illuminate".next_reference{wrap=true}
nnoremap 3 :lua vim.lsp.buf.formatting()diagnosticls
nnoremap s :lua vim.lsp.buf.signature_help()
nnoremap r :lua vim.lsp.buf.rename()
nnoremap 	 :lua vim.diagnostic.open_float(0, {scope="line"})
nnoremap ( :lua vim.diagnostic.goto_prev({ float = false })
nnoremap i :lua vim.lsp.buf.implementation()
nnoremap A :lua vim.lsp.buf.code_action()
nnoremap R :TypescriptRenameFile
nnoremap wa :lua vim.lsp.buf.add_workspace_folder()
nnoremap I :TypescriptAddMissingImports
nnoremap wr :lua vim.lsp.buf.remove_workspace_folder()
nnoremap o :TypescriptOrganizeImports
nnoremap f :lua vim.lsp.buf.formatting()
nnoremap ww :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
nnoremap <silent> S <Cmd>lua require("fzf-lua").lsp_document_symbols()
nnoremap <silent> w <Cmd>lua require("fzf-lua").lsp_live_workspace_symbols()
nnoremap <silent> ee <Cmd>lua require("fzf-lua").lsp_workspace_diagnostics()
nnoremap <silent> e <Cmd>lua require("fzf-lua").lsp_document_diagnostics()
nnoremap <silent> u <Cmd>lua require("fzf-lua").lsp_references()
nnoremap <silent> a <Cmd>lua require("fzf-lua").lsp_code_actions()
nnoremap <silent> ii <Cmd>lua require("fzf-lua").lsp_implementations()
nnoremap <silent> dd <Cmd>lua require("fzf-lua").lsp_typedefs()
nnoremap d :lua vim.lsp.buf.type_definition()
nnoremap <silent> D <Cmd>lua require("fzf-lua").lsp_declarations()
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
map  <Nop>
nnoremap <nowait> <silent>  :VimwikiToggleListItem
snoremap  "_c
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent> A :qa!
nnoremap <silent> w :w
nnoremap <silent> W :wa
nnoremap <silent> Q :q!
nnoremap <silent> a :qa
nnoremap <silent>  
nnoremap <silent>  	
nnoremap <silent>  w Þ <Nop>
nnoremap <silent>  wzÞ <Nop>
nnoremap <silent>  wÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  fÞ <Nop>
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  bd :Bclose
nmap <silent>  w w <Plug>(wiki-journal)
nmap <silent>  wn <Plug>(wiki-open)
nmap <silent>  ww <Plug>(wiki-index)
nmap <silent>  wx <Plug>(wiki-reload)
nmap <silent>  wbr <Plug>(roam-update-backlink-buffer)
nmap <silent>  wb <Plug>(roam-backlink-buffer)
nmap <silent>  wzu <Plug>(roam-fzf-unlinks)
nmap <silent>  wzb <Plug>(roam-fzf-backlinks)
nnoremap <silent>  fd :FDirectory
nnoremap <silent>  ff :FFile
nnoremap <silent>  fs :FSplit
nnoremap <silent>  fe :FExplore
nnoremap <silent>  S <Cmd>lua require("fzf-lua").lsp_document_symbols()
nnoremap <silent>  SS <Cmd>lua require("fzf-lua").lsp_live_workspace_symbols()
nnoremap <silent>  ee <Cmd>lua require("fzf-lua").lsp_workspace_diagnostics()
nnoremap <silent>  e <Cmd>lua require("fzf-lua").lsp_document_diagnostics()
nnoremap <silent>  u <Cmd>lua require("fzf-lua").lsp_references()
nnoremap <silent>  a <Cmd>lua require("fzf-lua").lsp_code_actions()
nnoremap <silent>  t <Cmd>lua require("fzf-lua").tabs()
nnoremap <silent>  m <Cmd>lua require("fzf-lua").marks()
nnoremap <silent>  gg <Cmd>lua require("fzf-lua").grep_cword()
nnoremap <silent>  g <Cmd>lua require("fzf-lua").live_grep()
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
nnoremap <silent> .Þ <Nop>
nnoremap <silent> . <Cmd>lua require("which-key").show(".", {mode = "n", auto = true})
nmap .// <Plug>kommentary_line_default
nmap ./ <Plug>kommentary_motion_default
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap <silent> BÞ <Nop>
nnoremap <silent> B <Cmd>lua require("which-key").show("B", {mode = "n", auto = true})
inoremap <silent> §Þ <Nop>
inoremap <silent> § <Cmd>lua require("which-key").show("§", {mode = "i", auto = true})
nnoremap <silent> Bc :BDelete nameless
nnoremap <silent> Bq :BDelete! hidden
vnoremap C $"*yy
nnoremap <silent> F :HopWord
nnoremap <silent> <expr> H context#util#map_H()
nnoremap <silent> J j
nnoremap <silent> K k
nnoremap <silent> N :lua require("illuminate").goto_prev_reference(wrap)
nnoremap <silent> U :redo
nnoremap YY "*yyyy
vnoremap Y $y
nnoremap Y y$
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
onoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
xnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
nnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top', true)
nnoremap <silent> \Þ <Nop>
nnoremap <silent> \ <Cmd>lua require("which-key").show("\\", {mode = "n", auto = true})
nnoremap <silent> \f :lua require"jester".run_file()
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
onoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
xnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
nnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom', true)
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
onoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xnoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap <silent> daÞ <Nop>
nnoremap <silent> diÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nnoremap <silent> dx yydd
nnoremap <silent> dw vb"_d
nnoremap <silent> f :HopChar1
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> gsÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> go :Tig
nnoremap <silent> ga :Git add .
nnoremap <silent> gB :Git blame
nnoremap <silent> gl :Neogit
nnoremap <silent> gh :DiffviewFileHistory %:DiffviewToggleFiles
nnoremap <silent> gu :DiffviewFileHistory
nnoremap <silent> gk :DiffviewOpen:DiffviewToggleFiles
nnoremap <silent> gsL :lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})
nnoremap <silent> gss :Gitsigns stage_hunk
nnoremap <silent> gsl :Gitsigns select_hunk
nnoremap <silent> gsf :Gitsigns stage_buffer
nnoremap <silent> gsp :Gitsigns preview_hunk_inline
nnoremap <silent> g	 :Gitsigns toggle_current_line_blame
nnoremap <silent> gsu :Gitsigns undo_stage_hunk
nnoremap <silent> gb :Gitsigns blame_line
nnoremap <silent> gtl :FzfLua git_stash
nnoremap <silent> gf :FzfLua git_status
nmap <silent> gcg <Plug>kommentary_motion_default
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap <silent> gm <Cmd>lua require("fzf-lua").git_branches()
nmap gc <Plug>kommentary_motion_default
xmap gc <Plug>kommentary_visual_default
nmap gcc <Plug>kommentary_line_default
onoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
nnoremap <silent> mjÞ <Nop>
nnoremap <silent> mkÞ <Nop>
nnoremap <silent> mÞ <Nop>
nnoremap <silent> m <Cmd>lua require("which-key").show("m", {mode = "n", auto = true})
nnoremap <silent> mN :cn
nnoremap <silent> mP :cp
nnoremap <silent> m	 :BookmarkShowAll
nmap mg <Plug>BookmarkMoveToLine
nmap mjj <Plug>BookmarkMoveDown
nmap mkk <Plug>BookmarkMoveUp
nnoremap <silent> mx :BookmarkClearAll
nnoremap <silent> mc :BookmarkClear
nnoremap <silent> mp :mp
nnoremap <silent> mn :mn
nnoremap <silent> mi :BookmarkAnnotate 
nnoremap <silent> mm :BookmarkToggle
nnoremap <silent> ma :Unite vim_bookmarks -here
nnoremap <silent> sjÞ <Nop>
nnoremap <silent> skÞ <Nop>
nnoremap <silent> slÞ <Nop>
nnoremap <silent> s;hÞ <Nop>
nnoremap <silent> s;Þ <Nop>
nnoremap <silent> sdÞ <Nop>
nnoremap <silent> s	Þ <Nop>
nnoremap <silent> sÞ <Nop>
nnoremap <silent> s <Cmd>lua require("which-key").show("s", {mode = "n", auto = true})
nnoremap <nowait> <silent> sn :AerialToggle
nnoremap <silent> sdm :lua require"dapui".toggle()
nnoremap <silent> sd	 :lua require"dap.ui.widgets".hover()
nnoremap <silent> sd  :lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)
nnoremap <silent> sdo :DapStepOver
nnoremap <silent> sdt :lua require"dap".repl.open({}, "vsplit")l
nnoremap <silent> sdp :DapToggleBreakpoint
nnoremap <silent> sd[ :lua require"dap".down()
nnoremap <silent> sdu :DapStepOut
nnoremap <silent> sd] :lua require"dap".up()
nnoremap <silent> sds :DapContinue
nnoremap <silent> sdc :lua require"dap".continue()
nnoremap <silent> sd- :DapTerminate
nnoremap <silent> sdi :DapStepInto
nnoremap <nowait> <silent> sE :Neotree position=current dir=%:p:h:h reveal_file=%:p
nnoremap <nowait> <silent> se :Neotree reveal current
nnoremap <nowait> <silent> sh :Neotree git_status dir=%:p:h
nnoremap <nowait> <silent> so :Neotree current git_status
nnoremap <nowait> <silent> sH :Neotree dir=%:p:h:h reveal_file=%:p git_status
nnoremap <nowait> <silent> sb :Neotree position=current buffers
nnoremap <nowait> <silent> sm :Neotree reveal
nnoremap <silent> slr <Cmd>lua require("fzf-lua").lsp_references({ winopts = { preview = { hidden = "nohidden", border = "border" } } })
nnoremap <silent> st :FzfLua tabs
nnoremap <silent> sjj :FzfLua jumps
nnoremap <silent> sll :FzfLua resume
nnoremap <silent> su :FzfLua oldfiles
nnoremap <silent> sjk <Cmd>lua require("fzf-lua").changes({ winopts = { win_height = 0.8, win_width = 0.5, win_row = 0, win_col = 0.5 }, preview = { hidden = "nohidden", border = "border" }})
nnoremap <silent> sko :OutgoingCalls
nnoremap <silent> skr :References
nnoremap <silent> ski :IncomingCalls
nnoremap <silent> skd :DocumentSymbols
nnoremap <silent> ska :CodeActions
nnoremap <silent> skI :Implementations
nnoremap <silent> sk  :TypeDefinitions
nnoremap <silent> ske :Definitions
nnoremap <silent> skf :Diagnostics
nnoremap <silent> sks :WorkspaceSymbols
nnoremap <silent> s;e :Files
nnoremap <silent> s;* :Helptags
nnoremap <silent> s;hf :History:
nnoremap <silent> s;C :Commits
nnoremap <silent> s;hs :History/
nnoremap <silent> s;B :Buffers
nnoremap <silent> s;) :Colors
nnoremap <silent> s;L :BLines
nnoremap <silent> s;M :Marks
nnoremap <silent> s;c :BCommits
nnoremap <silent> s;( :Maps
nnoremap <silent> s;l :Lines
nnoremap <silent> s;t :Tags
nnoremap <silent> s;; :Commands
nnoremap <silent> s;g :GFiles?
nnoremap <silent> s;T :BTags
nnoremap <silent> s;W :Windows
nnoremap <silent> s;P :Snippets
nnoremap <silent> s;G :GFiles
nnoremap <silent> s;& :Filetypes
nnoremap <silent> s;hh :History
nnoremap <nowait> sl1 :EslintFixAll
nnoremap <nowait> slh :lua vim.lsp.buf.hover()
nnoremap <nowait> sl] :lua require"illuminate".next_reference{wrap=true}
nnoremap <nowait> sl[ :lua require"illuminate".next_reference{reverse=true,wrap=true}
nnoremap <nowait> sl4 :lua vim.lsp.buf.format()null-ls
nnoremap <nowait> slu :TypescriptRemoveUnused
nnoremap <nowait> sls :lua vim.lsp.buf.signature_help()
nnoremap <nowait> sl	 :lua vim.diagnostic.open_float(0, {scope="line"})
nnoremap <nowait> sl2 :lua vim.lsp.buf.format()tsserver
nnoremap <nowait> sl3 :lua vim.lsp.buf.format()diagnosticls
nnoremap <nowait> sli :TypescriptAddMissingImports
nnoremap <nowait> slt :lua vim.lsp.buf.type_definition()
nnoremap <nowait> slm :lua vim.lsp.buf.implementation()
nnoremap <nowait> sld :lua vim.lsp.buf.definition()
nnoremap <nowait> sle :EslintFixAll
nnoremap <nowait> slf :lua vim.lsp.buf.format()
nnoremap <nowait> slD :lua vim.lsp.buf.declaration()
nnoremap <silent> s	n :set number!
nnoremap <silent> s	h :set cursorline!
nnoremap <silent> sa :qa
nnoremap <silent> s= =
nnoremap <silent> sw :w
nnoremap <silent> sq :q
nnoremap <silent> s] 	
nnoremap <silent> s[ 
nnoremap <nowait> sN :Vista nvim_lsp
nnoremap <silent> sc :tabnew
nnoremap <silent> sg :FzfLua live_grep
nnoremap <silent> sf :FzfLua files
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> vaf :TSTextobjectSelect @function.outer
nnoremap <silent> vif :TSTextobjectSelect @function.inner
nnoremap <silent> vp :let @+=@%:echo @%
nnoremap <silent> vP :let @+=expand("%:p"):echo expand('%:p')
nnoremap <silent> vaa ggVG
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
xnoremap <silent> zÞ <Nop>
xnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})
nnoremap <nowait> <silent> z	 :lua vim.o.foldlevel = 1
nnoremap <silent> <expr> zt context#util#map_zt()
nnoremap <silent> <C-L>cÞ <Nop>
nnoremap <silent> <C-L>c <Cmd>lua require("which-key").show("\12c", {mode = "n", auto = true})
nnoremap <silent> <C-F>Þ <Nop>
nnoremap <silent> <C-F> <Cmd>lua require("which-key").show("\6", {mode = "n", auto = true})
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent> <M-k> :tabnext
nnoremap <silent> <M-d> :WintabsClose
nnoremap <silent> <M-h> :WintabsPrevious
nnoremap <silent> <M-j> :tabprevious
nnoremap <silent> <M-l> :WintabsNext
nnoremap <silent> <M-D> :WintabsCloseVimtab
nnoremap <nowait> <silent> <C-N> :VimwikiToggleListItem
nnoremap <silent> <C-H> :MundoToggle
nnoremap <silent> <M-Q> :BDelete! hidden
nnoremap <nowait> <silent> <M-m> :Neotree toggle
nnoremap <nowait> <silent> <M-e> :Neotree current
nnoremap <C-L>1 :lua vim.lsp.buf.formatting()eslint
nnoremap <C-L>l :lua vim.lsp.codelens.run()
nnoremap <C-L>co :lua vim.lsp.buf.outgoing_calls()
nnoremap <C-L>[ :lua require"illuminate".next_reference{reverse=true,wrap=true}
nnoremap <C-L>h :lua vim.lsp.buf.hover()
nnoremap <C-L>ci :lua vim.lsp.buf.incoming_calls()
nnoremap <C-L>) :lua vim.diagnostic.goto_next({ float = false })
nnoremap <C-L>4 :lua vim.lsp.buf.formatting()null-ls
nnoremap <C-L>2 :lua vim.lsp.buf.formatting()tsserver
nnoremap <C-L>] :lua require"illuminate".next_reference{wrap=true}
nnoremap <C-L>3 :lua vim.lsp.buf.formatting()diagnosticls
nnoremap <C-L>s :lua vim.lsp.buf.signature_help()
nnoremap <C-L>r :lua vim.lsp.buf.rename()
nnoremap <C-L>	 :lua vim.diagnostic.open_float(0, {scope="line"})
nnoremap <C-L>( :lua vim.diagnostic.goto_prev({ float = false })
nnoremap <C-L>i :lua vim.lsp.buf.implementation()
nnoremap <C-L>A :lua vim.lsp.buf.code_action()
nnoremap <C-L>R :TypescriptRenameFile
nnoremap <C-L>wa :lua vim.lsp.buf.add_workspace_folder()
nnoremap <C-L>I :TypescriptAddMissingImports
nnoremap <C-L>wr :lua vim.lsp.buf.remove_workspace_folder()
nnoremap <C-L>o :TypescriptOrganizeImports
nnoremap <C-L>f :lua vim.lsp.buf.formatting()
nnoremap <C-L>ww :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
nnoremap <silent> <M-c> :set cursorline!
nnoremap <silent> <M-o> :call AddEmptyLineBelow()
nnoremap <silent> <C-W>A :qa!
nnoremap <silent> <M-O> :call AddEmptyLineAbove()
nnoremap <silent> <C-W>w :w
nnoremap <silent> <M-i> :call DelEmptyLineBelow()
nnoremap <silent> <C-W>W :wa
nnoremap <silent> <M-I> :call DelEmptyLineAbove()
nnoremap <silent> <C-J> 
nnoremap <silent> <C-K> 
nnoremap <silent> <M-s> :Lazy
nnoremap <silent> <C-]> 	
nnoremap <silent> <C-[> 
nnoremap <silent> <S-Tab> :tabprev
nnoremap <silent> <C-W>Q :q!
nnoremap <silent> <C-W>a :qa
smap <silent> <Plug>(cmpu-jump-backwards) :call UltiSnips#JumpBackwards()
smap <silent> <Plug>(cmpu-jump-forwards) :call UltiSnips#JumpForwards()
smap <silent> <Plug>(cmpu-expand) :call UltiSnips#ExpandSnippetOrJump()
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <Plug>(wintabs_refresh) :WintabsRefresh
nnoremap <silent> <Plug>(wintabs_maximize) :WintabsMaximize
nnoremap <silent> <Plug>(wintabs_move_to_window_next) :WintabsMoveToWindow w
nnoremap <silent> <Plug>(wintabs_move_to_window_below) :WintabsMoveToWindow j
nnoremap <silent> <Plug>(wintabs_move_to_window_above) :WintabsMoveToWindow k
nnoremap <silent> <Plug>(wintabs_move_to_window_right) :WintabsMoveToWindow l
nnoremap <silent> <Plug>(wintabs_move_to_window_left) :WintabsMoveToWindow h
nnoremap <silent> <Plug>(wintabs_move_right) :WintabsMove 1
nnoremap <silent> <Plug>(wintabs_move_left) :WintabsMove -1
nnoremap <silent> <Plug>(wintabs_last) :WintabsLast
nnoremap <silent> <Plug>(wintabs_first) :WintabsFirst
nnoremap <silent> <Plug>(wintabs_tab_9) :WintabsGo 9
nnoremap <silent> <Plug>(wintabs_tab_8) :WintabsGo 8
nnoremap <silent> <Plug>(wintabs_tab_7) :WintabsGo 7
nnoremap <silent> <Plug>(wintabs_tab_6) :WintabsGo 6
nnoremap <silent> <Plug>(wintabs_tab_5) :WintabsGo 5
nnoremap <silent> <Plug>(wintabs_tab_4) :WintabsGo 4
nnoremap <silent> <Plug>(wintabs_tab_3) :WintabsGo 3
nnoremap <silent> <Plug>(wintabs_tab_2) :WintabsGo 2
nnoremap <silent> <Plug>(wintabs_tab_1) :WintabsGo 1
nnoremap <silent> <Plug>(wintabs_only_vimtab) :WintabsOnlyVimtab
nnoremap <silent> <Plug>(wintabs_close_vimtab) :WintabsCloseVimtab
nnoremap <silent> <Plug>(wintabs_only_window) :WintabsOnlyWindow
nnoremap <silent> <Plug>(wintabs_close_window) :WintabsCloseWindow
nnoremap <silent> <Plug>(wintabs_all) :WintabsAll
nnoremap <silent> <Plug>(wintabs_only) :WintabsOnly
nnoremap <silent> <Plug>(wintabs_undo) :WintabsUndo
nnoremap <silent> <Plug>(wintabs_close) :WintabsClose
nnoremap <silent> <Plug>(wintabs_previous) :WintabsPrevious
nnoremap <silent> <Plug>(wintabs_next) :WintabsNext
nnoremap <silent> <Plug>(wiki-tags) :WikiTags
nnoremap <silent> <Plug>(wiki-pages) :WikiPages
nnoremap <silent> <Plug>(wiki-reload) :WikiReload
nnoremap <silent> <Plug>(wiki-journal) :WikiJournal
nnoremap <silent> <Plug>(wiki-open) :WikiOpen
nnoremap <silent> <Plug>(wiki-index) :WikiIndex
nnoremap <silent> <Plug>(roam-fzf-unlinks) :RoamFzfUnlinks
nnoremap <silent> <Plug>(roam-fzf-backlinks) :RoamFzfBacklinks
nnoremap <silent> <Plug>(roam-update-backlink-buffer) :RoamUpdateBacklinkBuffer
nnoremap <silent> <Plug>(roam-backlink-buffer) :RoamBacklinkBuffer
nnoremap <silent> <M-n> :tabnew
nnoremap <silent> <Plug>BookmarkMoveToLine :BookmarkMoveToLine v:count
nnoremap <silent> <Plug>BookmarkMoveDown :BookmarkMoveDown v:count
nnoremap <silent> <Plug>BookmarkMoveUp :BookmarkMoveUp v:count
nnoremap <silent> <Plug>BookmarkClearAll :BookmarkClearAll
nnoremap <silent> <Plug>BookmarkClear :BookmarkClear
nnoremap <silent> <Plug>BookmarkPrev :BookmarkPrev
nnoremap <silent> <Plug>BookmarkNext :BookmarkNext
nnoremap <silent> <Plug>BookmarkAnnotate :BookmarkAnnotate
nnoremap <silent> <Plug>BookmarkToggle :BookmarkToggle
nnoremap <silent> <Plug>BookmarkShowAll :BookmarkShowAll
nnoremap <silent> <C-L>S <Cmd>lua require("fzf-lua").lsp_document_symbols()
nnoremap <silent> <C-L>w <Cmd>lua require("fzf-lua").lsp_live_workspace_symbols()
nnoremap <silent> <C-L>ee <Cmd>lua require("fzf-lua").lsp_workspace_diagnostics()
nnoremap <silent> <C-L>e <Cmd>lua require("fzf-lua").lsp_document_diagnostics()
nnoremap <silent> <C-L>u <Cmd>lua require("fzf-lua").lsp_references()
nnoremap <silent> <C-L>a <Cmd>lua require("fzf-lua").lsp_code_actions()
nnoremap <silent> <C-L>ii <Cmd>lua require("fzf-lua").lsp_implementations()
nnoremap <silent> <C-L>dd <Cmd>lua require("fzf-lua").lsp_typedefs()
nnoremap <C-L>d :lua vim.lsp.buf.type_definition()
nnoremap <silent> <C-L>D <Cmd>lua require("fzf-lua").lsp_declarations()
nnoremap <silent> <C-F>/ <Cmd>lua require("fzf-lua").commands()
nnoremap <silent> <C-F>k <Cmd>lua require("fzf-lua").keymaps()
nnoremap <silent> <C-F>r <Cmd>lua require("fzf-lua").registers()
nnoremap <silent> <C-F><C-C> <Cmd>lua require("fzf-lua").changes({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent> <C-F><C-H> <Cmd>lua require("fzf-lua").oldfiles({ fzf_opts = { ['--height'] = "100%" }, winopts = { preview = { hidden = "hidden" }, win_height = 1, win_width = 1 } })
nnoremap <silent> <C-F>h <Cmd>lua require("fzf-lua").oldfiles()
nnoremap <silent> <C-F>t <Cmd>lua require("fzf-lua").tabs()
nnoremap <silent> <C-F>m <Cmd>lua require("fzf-lua").marks()
nnoremap <silent> <C-F><C-G> <Cmd>lua require("fzf-lua").live_grep({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent> <C-F>g <Cmd>lua require("fzf-lua").live_grep()
nnoremap <silent> <C-F>' <Cmd>lua require("fzf-lua").buffers()
nnoremap <silent> <C-F><C-F> <Cmd>lua require("fzf-lua").files({ fzf_opts = { ['--height'] = "100%" }, winopts = { win_height = 1 } })
nnoremap <silent> <C-F>f <Cmd>lua require("fzf-lua").files()
xnoremap <silent> <Plug>kommentary_visual_singles <Cmd>call v:lua.kommentary.go(2,"kommentary_visual_singles")
nnoremap <silent> <expr> <Plug>kommentary_motion_singles v:lua.kommentary.go(3,"kommentary_motion_singles")
xnoremap <silent> <Plug>kommentary_visual_decrease <Cmd>call v:lua.kommentary.go(2,"kommentary_visual_decrease")
nnoremap <silent> <expr> <Plug>kommentary_line_decrease v:lua.kommentary.go(1,"kommentary_line_decrease")
nnoremap <silent> <expr> <Plug>kommentary_motion_decrease v:lua.kommentary.go(3,"kommentary_motion_decrease")
xnoremap <silent> <Plug>kommentary_visual_increase <Cmd>call v:lua.kommentary.go(2,"kommentary_visual_increase")
nnoremap <silent> <expr> <Plug>kommentary_line_increase v:lua.kommentary.go(1,"kommentary_line_increase")
nnoremap <silent> <expr> <Plug>kommentary_motion_increase v:lua.kommentary.go(3,"kommentary_motion_increase")
xnoremap <silent> <Plug>kommentary_visual_default <Cmd>call v:lua.kommentary.go(2,"kommentary_visual_default")
nnoremap <silent> <expr> <Plug>kommentary_line_default v:lua.kommentary.go(1,"kommentary_line_default")
nnoremap <silent> <expr> <Plug>kommentary_motion_default v:lua.kommentary.go(3,"kommentary_motion_default")
nnoremap <silent> <Plug>(markdown_go_prev_heading) <Cmd>lua require'markdown.nav'.prev_heading()
nnoremap <silent> <Plug>(markdown_go_next_heading) <Cmd>lua require'markdown.nav'.next_heading()
nnoremap <silent> <Plug>(markdown_go_parent_heading) <Cmd>lua require'markdown.nav'.parent_heading()
nnoremap <silent> <Plug>(markdown_go_current_heading) <Cmd>lua require'markdown.nav'.curr_heading()
nnoremap <silent> <Plug>(markdown_follow_link_default_app) <Cmd>lua require'markdown.link'.follow({ use_default_app = true })
nnoremap <silent> <Plug>(markdown_follow_link) <Cmd>lua require'markdown.link'.follow()
xnoremap <silent> <Plug>(markdown_add_link_visual) gv<Cmd>lua require'markdown.link'.add_visual()
nnoremap <silent> <Plug>(markdown_change_emphasis) <Cmd>lua require'markdown.inline'.change_surrounding_emphasis()
nnoremap <silent> <Plug>(markdown_delete_emphasis) <Cmd>lua require'markdown.inline'.delete_surrounding_emphasis()
xnoremap <silent> <Plug>(markdown_toggle_emphasis_visual) gv<Cmd>lua require'markdown.inline'.toggle_emphasis_visual()
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
map <C-M> <Nop>
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
cnoremap <silent> c <Cmd>lua require("fzf-lua").command_history()
cnoremap <silent>  <Cmd>lua require("fzf-lua").command_history()
inoremap  <Left>
inoremap  <Right>
inoremap  pi
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap  u
inoremap jk 
inoremap kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set cmdheight=0
set completeopt=menuone,noinsert,noselect
set foldlevelstart=99
set guifont=Monaco:h10
set helplang=en
set laststatus=3
set lazyredraw
set listchars=eol:↴,nbsp:+,tab:│\ ,trail:-
set noloadplugins
set makeencoding=utf-8
set modelineexpr
set modelines=4
set mouse=a
set packpath=/opt/homebrew/Caskroom/neovim-nightly/latest/nvim-macos/share/nvim/runtime
set runtimepath=
set runtimepath+=~/.config/nvim
set runtimepath+=~/.local/share/nvim/site
set runtimepath+=~/.nvim/lazy/lazy.nvim
set runtimepath+=~/.nvim/plugins/aerial.nvim
set runtimepath+=~/.nvim/plugins/nvim-navic
set runtimepath+=~/.nvim/plugins/lualine.nvim
set runtimepath+=~/.nvim/plugins/vim-wintabs
set runtimepath+=~/.nvim/plugins/deadcolumn.nvim
set runtimepath+=~/.nvim/plugins/blackjack.nvim
set runtimepath+=~/.nvim/plugins/bclose.vim
set runtimepath+=~/.nvim/plugins/tig-explorer.vim
set runtimepath+=~/.nvim/plugins/nvim-dap-virtual-text
set runtimepath+=~/.nvim/plugins/vim-wakatime
set runtimepath+=~/.nvim/plugins/wiki.vim
set runtimepath+=~/.nvim/plugins/vim-fugitive
set runtimepath+=~/.nvim/plugins/indent-blankline.nvim
set runtimepath+=~/.nvim/plugins/asyncrun.vim
set runtimepath+=~/.nvim/plugins/vim-roam
set runtimepath+=~/.nvim/plugins/nvim-dap-ui
set runtimepath+=~/.nvim/plugins/nvim-dap
set runtimepath+=~/.nvim/plugins/diffview.nvim
set runtimepath+=~/.nvim/plugins/neogit
set runtimepath+=~/.nvim/plugins/gitsigns.nvim
set runtimepath+=~/.nvim/plugins/satellite.nvim
set runtimepath+=~/.nvim/plugins/vim-illuminate
set runtimepath+=~/.nvim/plugins/vim-colors
set runtimepath+=~/.nvim/plugins/fidget.nvim
set runtimepath+=~/.nvim/plugins/codeium.vim
set runtimepath+=~/.nvim/plugins/mason-lspconfig.nvim
set runtimepath+=~/.nvim/plugins/vim-mundo
set runtimepath+=~/.nvim/plugins/vim-empty-lines
set runtimepath+=~/.nvim/plugins/promise-async
set runtimepath+=~/.nvim/plugins/nvim-ufo
set runtimepath+=~/.nvim/plugins/backseat.nvim
set runtimepath+=~/.nvim/plugins/mason-null-ls.nvim
set runtimepath+=~/.nvim/plugins/tsc.nvim
set runtimepath+=~/.nvim/plugins/close-buffers.nvim
set runtimepath+=~/.nvim/plugins/vista.vim
set runtimepath+=~/.nvim/plugins/FavEx
set runtimepath+=~/.nvim/plugins/unite.vim
set runtimepath+=~/.nvim/plugins/vim-bookmarks
set runtimepath+=~/.nvim/plugins/nvim-treesitter-textsubjects
set runtimepath+=~/.nvim/plugins/playground
set runtimepath+=~/.nvim/plugins/vifm.vim
set runtimepath+=~/.nvim/plugins/nvim-autopairs
set runtimepath+=~/.nvim/plugins/nui.nvim
set runtimepath+=~/.nvim/plugins/neo-tree.nvim
set runtimepath+=~/.nvim/plugins/hop.nvim
set runtimepath+=~/.nvim/plugins/jester
set runtimepath+=~/.nvim/plugins/fzf-lua
set runtimepath+=~/.nvim/plugins/fzf-lsp.nvim
set runtimepath+=~/.nvim/plugins/sudoku.nvim
set runtimepath+=~/.nvim/plugins/yats.vim
set runtimepath+=~/.nvim/plugins/ddu.vim
set runtimepath+=~/.nvim/plugins/denops.vim
set runtimepath+=~/.nvim/plugins/ai-review.vim
set runtimepath+=~/.nvim/plugins/kommentary
set runtimepath+=~/.nvim/plugins/trouble.nvim
set runtimepath+=~/.nvim/plugins/nvim-highlight-colors
set runtimepath+=~/.nvim/plugins/context.vim
set runtimepath+=~/.nvim/plugins/markdown.nvim
set runtimepath+=~/.nvim/plugins/mason.nvim
set runtimepath+=~/.nvim/plugins/mason-nvim-dap.nvim
set runtimepath+=~/.nvim/plugins/fzf
set runtimepath+=~/.nvim/plugins/fzf.vim
set runtimepath+=~/.nvim/plugins/mini.nvim
set runtimepath+=~/.nvim/plugins/which-key.nvim
set runtimepath+=~/.nvim/plugins/typescript.nvim
set runtimepath+=~/.nvim/plugins/null-ls.nvim
set runtimepath+=~/.nvim/plugins/schemastore.nvim
set runtimepath+=~/.nvim/plugins/lspkind-nvim
set runtimepath+=~/.nvim/plugins/ultisnips
set runtimepath+=~/.nvim/plugins/cmp-nvim-ultisnips
set runtimepath+=~/.nvim/plugins/cmp-treesitter
set runtimepath+=~/.nvim/plugins/cmp-conventionalcommits
set runtimepath+=~/.nvim/plugins/cmp-nvim-lsp-signature-help
set runtimepath+=~/.nvim/plugins/cmp-buffer
set runtimepath+=~/.nvim/plugins/cmp-path
set runtimepath+=~/.nvim/plugins/cmp-cmdline
set runtimepath+=~/.nvim/plugins/cmp-tabnine
set runtimepath+=~/.nvim/plugins/nvim-cmp
set runtimepath+=~/.nvim/plugins/cmp-nvim-lsp
set runtimepath+=~/.nvim/plugins/nvim-lspconfig
set runtimepath+=~/.nvim/plugins/plenary.nvim
set runtimepath+=~/.nvim/plugins/todo-comments.nvim
set runtimepath+=~/.nvim/plugins/impatient.nvim
set runtimepath+=~/.nvim/plugins/nvim-treesitter
set runtimepath+=~/.nvim/plugins/nvim-treesitter-textobjects
set runtimepath+=~/.nvim/plugins/mru
set runtimepath+=~/.nvim/plugins/nvim-web-devicons
set runtimepath+=~/.nvim/plugins/alpha-nvim
set runtimepath+=~/.nvim/plugins/vim-polyglot
set runtimepath+=/opt/homebrew/Caskroom/neovim-nightly/latest/nvim-macos/share/nvim/runtime
set runtimepath+=/opt/homebrew/Caskroom/neovim-nightly/latest/nvim-macos/share/nvim/runtime/pack/dist/opt/matchit
set runtimepath+=/opt/homebrew/Caskroom/neovim-nightly/latest/nvim-macos/lib/nvim
set runtimepath+=~/.local/state/nvim/lazy/readme
set runtimepath+=~/.nvim/plugins/blackjack.nvim/after
set runtimepath+=~/.nvim/plugins/indent-blankline.nvim/after
set runtimepath+=~/.nvim/plugins/vim-polyglot/after
set runtimepath+=~/.nvim/plugins/playground/after
set runtimepath+=~/.nvim/plugins/ultisnips/after
set runtimepath+=~/.nvim/plugins/cmp-nvim-ultisnips/after
set runtimepath+=~/.nvim/plugins/cmp-treesitter/after
set runtimepath+=~/.nvim/plugins/cmp-conventionalcommits/after
set runtimepath+=~/.nvim/plugins/cmp-nvim-lsp-signature-help/after
set runtimepath+=~/.nvim/plugins/cmp-buffer/after
set runtimepath+=~/.nvim/plugins/cmp-path/after
set runtimepath+=~/.nvim/plugins/cmp-cmdline/after
set runtimepath+=~/.nvim/plugins/cmp-tabnine/after
set runtimepath+=~/.nvim/plugins/cmp-nvim-lsp/after
set shiftwidth=2
set shortmess=ltToOCFA
set showtabline=2
set splitright
set statusline=%#Normal#
set tabline=%!wintabs#ui#get_tabline()
set tabstop=2
set termguicolors
set updatetime=300
set wildignore=.git/**,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**
set wildignorecase
set window=40
" vim: set ft=vim :
