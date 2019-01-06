"""""""""""""""""""""""""""""""""""""""""""""""
" basic
"""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number
set relativenumber
set showcmd
set history=1000
set autoread
set hidden
set ruler
set lazyredraw
set showmatch
set autochdir

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'mattn/calendar-vim'
Plug 'itchyny/calendar.vim'

"themes
Plug 'morhetz/gruvbox'
Plug 'ajh17/Spacegray.vim'
" Plug 'sickill/vim-monokai'
Plug 'w0ng/vim-hybrid'
" Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'

"syntax
Plug 'leafgarland/typescript-vim'
" Plug 'leshill/vim-json'
Plug 'ap/vim-css-color'
Plug 'OmniSharp/Omnisharp-vim'
"Plug 'tpope/vim-dispatch'
Plug 'Valloric/YouCompleteMe'

Plug 'jiangmiao/auto-pairs'
Plug 'Quramy/tsuquyomi'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""
" mappings
"""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ip :source $MYVIMRC<cr>:PlugInstall<cr>
nnoremap <leader>v :tabedit $MYVIMRC<cr>
nnoremap <leader>b :tabedit ~/.bashrc<cr>

" alt - j/k inserts line below/above
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" fzf.vim mappints
nmap <leader>; :Buffers<cr>
nmap <leader>f :Files<cr>
nmap <leader>t :Tags<cr>
nmap <leader>l :Lines<cr>

" move between open buffers
nmap <C-n> :bnext<cr>
nmap <C-p> :bprev<cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" like <C-^>
nmap <C-e> :e#<cr>

" use space key to toggle folds
nnoremap <space> za
vnoremap <space> zf

" things which get mistyped, ignore them
nmap q: <silent>
nmap K <silent>

" custom commands
command! Q q
command! W w

" delete all buffers except this. %bd=delete all buffers, e#=open last buffer,
" bd#:delete last buffer ([No Name] buffer)
command! Bdall %bd|e#|bd#

" spelling corrections
abbr conosle console
abbr comopnent component


" window size: increaseby 1.5 or decrease by 0.67
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<cr>
nnoremap <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<cr>


"""""""""""""""""""""""""""""""""""""""""""""""
" appearance
"""""""""""""""""""""""""""""""""""""""""""""""
" set termguicolors " enables true color, not supported in urxvt
" let g:hybrid_custom_term_colors = 1
" let g:gruvbox_italic=1
set background=dark
" set background=light
" colorscheme hybrid
" colorscheme gruvbox
" colorscheme spacegray
" let g:solarized_termcolors=256
colorscheme solarized
" let g:seoul256_background = 234
" colorscheme seoul256
set synmaxcol=200
set cursorline
set laststatus=2
set title

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>

" vimwiki
let wiki1 = {'path':'/home/vik/Documents/wiki', 'ext':'.md'}
let wiki2 = {'path':'/home/vik/Documents/_data/_cloud/dropbox/vimwiki'}
let g:vimwiki_list =[wiki1, wiki2]
nnoremap <leader>wn :lnext<CR>
nnoremap <leader>wp :lprev<CR>
nnoremap <leader>w<cr> :VimwikiSplitLink<cr>
nnoremap <leader>w<cr> :VimwikiTabnewLink<cr>

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set breakindent
let &showbreak='> '

filetype plugin on
filetype indent on

" set nowrap
set linebreak

" folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable
"set foldlevel=99

" scrolling
set scrolloff=8
set sidescrolloff=15

" command auto-completion
set wildmenu
set wildmode=list:longest,full
set wildignorecase
" ignore compiled files
set wildignore=*.0,*~,*.pyc

" list chars
set list listchars=tab:»·,trail:·

" netrw
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_liststyle=3

" vim-vinegar
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" remove all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e


" typescript-vim settings
let g:typescript_compiler_binary = 'tsc' " :make to run tsc
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested cwindow

" tsuquyomi
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript nmap <buffer> <leader>e <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <leader>E <Plug>(TsuquyomiRenameSymbolC)
autocmd FileType typescript nmap <buffer> <leader>t : <C-u>echo tsuquyomi#hint()<cr>

"=====[ Highlight matches when jumping to next ]=============
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>

"=====[ Highlight the match in red ]=============
function! HLNext (blinktime)
  highlight WhiteOnRed ctermfg=white ctermbg=red guifg=#ffffff guibg=#ff0000
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  let ring = matchadd('WhiteOnRed', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

map <Leader>n :call RenameFile()<cr>

"""""""""""""""""""""""""""""""""""
" copy/paste using xclip
"""""""""""""""""""""""""""""""""""
vmap "+y :!xclip -f -sel clip<cr>
map "+p :r!xclip -o -sel clip<cr>

"""""""""""""""""""""""""""""""""""
" comment shortcut ",c"
"""""""""""""""""""""""""""""""""""
autocmd Filetype html nnoremap <buffer>  <leader>c I<!--<esc>A--><esc>
autocmd Filetype vim nnoremap <leader>c I"<esc>
autocmd Filetype vimwiki nnoremap <leader>c I%% <esc>

""""""""""""""""""""""""""""""""""
" source vimrc after writing
""""""""""""""""""""""""""""""""""
augroup auto_source_script
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


"""""""""""""""""""""""""""""
" save cursor position
""""""""""""""""""""""""""""""
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

""""""""""""""""""""""""""""""""""""
" hide status line when running fzf
""""""""""""""""""""""""""""""""""""
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:limelight_conceal_ctermfg = 240


"""""""""""""""""""""""""""""""""""
" use ranger as vim file manager
"""""""""""""""""""""""""""""""""""
function! RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_ranger_current_file')
        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
        call system('rm /tmp/vim_ranger_current_file')
    endif
    redraw!
endfun

map <Leader>r :call RangerExplorer()<CR>

" calendar.vim hook to open vimwiki-diary
autocmd FileType calendar nmap <buffer> <CR> :<C-u>call vimwiki#diary#calendar_action(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V")<CR>

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


"""""""""""""""""""""""""""
" Java
"""""""""""""""""""""""""""
augroup Java
  autocmd!
  autocmd FileType java nnoremap <buffer> <leader>b :!javac %<cr>
  autocmd FileType java nnoremap <buffer> <leader>B :!javac *.java<cr>
  autocmd FileType java nnoremap <buffer> <leader>m :!java <c-r>=expand("%:t:r")<cr><cr>
  autocmd FileType java nnoremap <buffer> <leader>c :normal I//<esc>
augroup END


"""""""""""""""""""""""""""
" Javascript
"""""""""""""""""""""""""""
augroup JavaScriptsCmds
  " clears out the autocmds of this group previously loaded
  autocmd!
  autocmd Filetype javascript nnoremap <buffer> <leader>r :!node %<cr>
  autocmd Filetype javascript nnoremap <buffer> <leader>c gI//<esc>
  autocmd Filetype javascript vnoremap <buffer> <leader>C :normal gI//<esc>
augroup END

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

" debugging helpers
autocmd BufEnter *.js iabbr xxx console.log('XXX',
autocmd BufEnter *.js iabbr yyy console.log('YYY',
autocmd BufEnter *.js iabbr zzz console.log('ZZZ',

"""""""""""""""""""""""""""
" text, markdown
"""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

"""""""""""""""""""""""""""
" statusline
"""""""""""""""""""""""""""
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
"set statusline+=%#PmenuSel#
set statusline+=%#CursorColumn#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
"set statusline+=%R\ %m\ %n
set statusline+=\ [%n%H%M%R%W]\ " flags and buf no
set statusline+=%=
"set statusline+=%#CursorColumn#
set statusline+=\ %b
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c



"set clipboard=unnamed     " access your system clipboard

" Omnisharp
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 1

" python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" js
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

