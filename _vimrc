" visual studio vimrc at C:\Users\<userName>\_vimrc
let mapleader=","
set scrolloff=5
set hlsearch
set incsearch
set ignorecase
set smartcase
" use system clipboard
set clipboard=unnamed
nnoremap <leader><space> :nohlsearch<CR>
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

noremap <leader>ss :vsc View.SolutionExplorer<cr>
noremap <leader>sx :vsc SolutionExplorer.OpenFilesFilter<CR>
noremap <leader>sm :vsc SolutionExplorer.SyncWithActiveDocument<CR>
noremap <leader>sf :vsc Window.SolutionExplorerSearch<CR>

"noremap <C-]> :vsc Edit.GoToDefinition<CR>
nnoremap <leader>gd :vsc ReSharper.ReSharper_GotoDeclaration<CR>
"noremap <leader>gi :vsc Edit.GoToImplementation<CR>
"nnoremap <Space> :vsc Tools.InvokeAceJumpCommand<CR>
nnoremap <leader>u :vsc ReSharper.ReSharper_GotoUsage<CR>
nnoremap <leader>d :vsc ReSharper.ReSharper_DuplicateText<CR>
nnoremap <leader>, :vsc ReSharper.ReSharper_GotoText<CR>
noremap <leader>fi :vsc ReSharper.ReSharper_GotoImplementations<cr>
noremap <leader>fr :vsc Edit.FindAllReferences<CR>
noremap <leader>fu :vsc ReSharper.ReSharper_FindUsages<cr>
map <leader>gp :vsc Edit.PeekDefinition<cr>
map <leader>gb :vsc ReSharper.ReSharper_GotoBase<cr>
map <leader>gi :vsc ReSharper.ReSharper_GotoInheritors<cr>

noremap <leader>ff :vsc Edit.FindInFiles<CR>
noremap <leader>fs :vsc Edit.SwitchToFindInFiles<CR>
:"noremap <C-E> :vsc Edit.QuickFindFile<CR>
noremap <C-;> :vsc Edit.NavigateTo<CR>
noremap <leader>fn :vsc Edit.GoToFindResults1NextLocation<CR>
noremap <leader>fN :vsc Edit.GoToFindResults1PrevLocation<CR>
noremap <leader>fs :vsc Edit.GoToFindResults2NextLocation<CR>
noremap <leader>fS :vsc Edit.GoToFindResults2PrevLocation<CR>
noremap <leader>f1 :vsc View.FindResults1<CR>
noremap <leader>f2 :vsc View.FindResults2<CR>
"TODO: set up shortcuts for Find Symbol Results
noremap <leader>sn :vsc Edit.GoToNextLocation<CR>
noremap <leader>sN :vsc Edit.GoToPrevLocation<CR>
map <leader>gR :vsc ReSharper.ReSharper_ShowFindResults<cr>
map <leader>gf :vsc View.FindResults1<cr>
map <leader>ge :vsc ReSharper.ReSharper_GotoRecentEdits<cr>
map <leader>gt :vsc ReSharper.ReSharper_GotoText<cr>
map <leader>gn :vsc ReSharper.ReSharper_GotoFile<cr>
map <leader>gl :vsc ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer<cr>

" refactoring
nnoremap cia :vsc Refactor.ReorderParameters<cr>
noremap R :vsc Refactor.Rename<CR>
noremap <leader>rm :vsc Refactor.ExtractMethod<CR>
nnoremap <leader>rr :vsc ReSharper.ReSharper_Rename<cr>
vmap <leader>re :vsc ReSharper.ReSharper_ExtractMethod<cr>
noremap <leader>rc :vsc Edit.SelectionCancel<CR>


noremap <leader>bs :vsc Build.BuildSolution<CR>
noremap <leader>bc :vsc Build.CleanSolution<CR>
noremap <leader>B :vsc Build.Cancel<CR>
noremap <leader>bp :vsc Build.BuildOnlyProject<CR>
noremap <leader>bC :vsc Build.CleanOnlyProject<CR>
noremap <leader>br :vsc Build.RebuildSolution<CR>

noremap <leader>to :vsc Tools.Options<CR>
noremap <leader>tv :vsc VsVim.Options<CR>
noremap <leader>vt :vsc VsVim.ToggleEnabled<CR>

noremap <leader>tv :vsc Window.NewVerticalTabGroup<CR>
noremap <leader>tV :vsc Window.MoveToPreviousTabGroup<CR>
noremap <leader>tn :vsc Window.MoveToNextTabGroup<CR>
noremap <leader>tN :vsc Window.MoveToPreviousTabGroup<CR>

noremap <leader>xa :vsc Window.CloseAllDocuments<CR>
noremap <leader>xm :vsc Window.CloseDocumentWindow<CR>
noremap <leader>xt :vsc File.CloseAllButThis<CR>
noremap <leader>w :vsc Window.NewWindow<CR>

noremap <leader>ot :vsc Edit.ToggleOutliningExpansion<CR>
noremap <leader>oT :vsc Edit.ToggleAllOutlining<CR>
noremap <leader>os :vsc Edit.StartAutomaticOutlining<CR>
noremap <leader>oS :vsc Edit.StopOutlining<CR>

noremap <C-R><C-C> :vsc Edit.CollapseCurrentRegion<CR>
noremap <C-R><C-E> :vsc Edit.ExpandCurrentRegion<CR>
noremap <C-R><C-A> :vsc View.ExpandAll<CR>
noremap <C-R><C-X> :vsc View.CollapseAll<CR>

noremap <leader>us :vsc Edit.SortUsings<CR>
noremap <leader>ur :vsc Edit.RemoveUnusedUsings<CR>

" <C-,> Search class/file
" Ctrl+Shift+F12 enable/disable VsVim



" testing and debugging
nnoremap <leader>bt :vsc Debug.ToggleBreakpoint<cr>
noremap <leader>dd :vsc Debug.DisableAllBreakpoints<CR>
noremap <leader>dD :vsc Debug.EnableAllBreakpoints<CR>

nnoremap <leader>r :vsc TestExplorer.RunAllTestsInContext<cr>
nnoremap <leader>R :vsc TestExplorer.DebugAllTestsInContext<cr>
noremap <leader>dc :vsc Debug.ShowNextStatement<CR>
noremap <leader>dn :vsc Debug.SetNextStatement<CR>
noremap <leader>dr :vsc Debug.RunToCursor<CR>
noremap <leader>dw :vsc Debug.QuickWatch<CR>
noremap <leader>da :vsc Debug.AddWatch<CR>
noremap <leader>dW :vsc Debug.Watch1<CR>
noremap <leader>dl :vsc Debug.Locals<CR>
noremap <leader>ds :vsc Debug.CallStack<CR>
noremap <leadre>di :vsc Debug.Immediate<CR>
noremap <leader>dm :vsc Debug.ListMemory<CR>
noremap <leader>dt :vsc Debug.ListThreads<CR>

noremap <leader>c :vsc Edit.CommentSelection<cr>
noremap <leader>C :vsc Edit.UncommentSelection<cr>


"noremap <C-X><C-O> :vsc View.ErrorList<CR>
noremap <leader>e :vsc View.NextError<CR>
noremap <leader>E :vsc View.PreviousError<CR>
"nnoremap <leader>e :vsc ReSharper.ReSharper_GotoNextErrorInSolution<cr>
"nnoremap <leader>E :vsc ReSharper.ReSharper_GotoPrevErrorInSolution<cr>
nnoremap <leader>w :vsc ReSharper.ReSharper_GotoNextHighlight<cr>
nnoremap <leader>W :vsc ReSharper.ReSharper_GotoPrevHighlight<cr>

map <leader>; A;<Esc>
map <leader>] :vsc ReSharper.ReSharper_GotoNextMethod<CR>
map <leader>[ :vsc ReSharper.ReSharper_GotoPrevMethod<CR>
"noremap <leader>m :vsc ReSharper.ReSharper_GotoNextMethod<cr>
"noremap <leader>M :vsc ReSharper.ReSharper_GotoPrevMethod<cr>
"noremap <leader>M :vsc Edit.PreviousMethod<cr>
"noremap <leader>m :vsc Edit.NextMethod<cr>
noremap <leader>n :vsc View.NavigateBackward<CR>
noremap <leader>N :vsc View.NavigateForward<CR>

nnoremap <leader>of :vsc File.OpenFile<cr>
noremap <leader>op :vsc File.OpenProject<CR>
noremap <leader>od :vsc File.OpenContainingFolder<CR>
noremap <leader>sa :vsc File.SaveAll<CR>
noremap <leader>cf :vsc File.CopyFullPath<CR>


noremap <leader>fc :vsc ReSharper.ReSharper_ReformatCode<cr>
"noremap <leader>fc :vsc Edit.FormatDocument<cr>



