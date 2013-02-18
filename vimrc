" Vim configuration

set nocompatible                  " Must come first because it changes other options.

"silent! call pathogen#runtime_append_all_bundles()
call pathogen#infect()

syntax on                         " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set notimeout 
set ttimeout
set timeoutlen=100

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Secret sauce handle multiple buffers.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest,full    " Complete files like a shell.
set wildcharm=<c-z>               " Complete files like a shell.
set wildignore+=*.o,*.obj,*.pyc,*.DS_Store,*.db " Hide irrelevent matches
set number                        " Show line numbers.
set numberwidth=4                   " 4 characters wide.
set ruler                         " Show cursor position.
set linespace=2                   " Set the space between lines(e.g. leading)
"set sidescrolloff=2
"set nowrap
"set linebreak  			  " Wrap at word
set cursorline
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set background=dark
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory^=$HOME/.vim_tmp//   " Keep swap files in one locations
set colorcolumn=80

if !isdirectory(&directory)
silent execute '!mkdir -p '.&directory
endif 

set softtabstop=2
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)
"set lazyredraw              	  " Don't redraw screen during macros
set ttyfast                 	  " Improves redrawing for newer computers
set ch=2			  " Make command line two lines high
set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=\ ::%f%m%r\ [type=%Y]%=[%03l,%03v][%L]\ 
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set matchpairs+=<:>
" uncomment to hilight long lines
"autocmd BufWinEnter  w:m2=matchadd('LongLineWarning', '\%>80v.\+', -1)
"autocmd BufEnter * lcd %:p:h 	  " Sets path to directory buffer was loaded from
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,winsize
set listchars=trail:.,tab:>-,eol:$
set nolist

" ******************************************
" FileType customizations
" ******************************************
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType javascript set ft=javascript.jquery 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete 
autocmd FileType actionscript set omnifunc=actionscriptcomplete#CompleteAS
autocmd FileType python set ft=python.django
" autocmd FileType html set ft=HTMLDJANGO.HTML
autocmd FileType liquid set ft=LIQUID.HTML
" autocmd FileType xhtml set ft=HTMLDJANGO.HTML
" autocmd FileType html set ft=htmljinja.html
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" ******************************************
" Dictionaries
" ******************************************
autocmd FileType actionscript :set dictionary=~/.vim/dict/actionscript.dict

"set spell
"set spelllang=en
"set spellsuggest=9

" ******************************************
" Keys custom mappings
" ******************************************

let mapleader = ","

:noremap <Leader>i :set list!<CR> 	" Toggle invisible chars
:noremap <Leader>n :nohlsearch<CR> 	" Hide Search

"Vertical split then hop to new buffer
:noremap <Leader>v :vsp^M^W^W<cr>
:noremap <Leader>h :split^M^W^W<cr>

map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" Make cursor move by visual lines instead of file lines (when wrapping)
" map <up> gk
"map k gk
" imap <up> <C-o>gk
" map <down> gj
"map j gj
" imap <down> <C-o>gj
"map E ge

" Move lines up and down
map <C-j> :m+1<CR>
map <C-k> :m-2<CR>

" Disable cursor keys
" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>

" :noremap <LEADER>n :NERDTreeToggle<CR>	" Toggle NerdTree
" Controversial...swap colon and semicolon for easier commands
" nnoremap ; :
" nnoremap : ;

" MRU Most Recently Used
":noremap <F5> :MRU<CR>


" FuzzyFinder
"map <Leader>b :FufBuffer<CR>
"map <Leader>f :FufFile<CR>
"map <Leader>F :FufFile **/<CR>
"map <Leader>l :FufChangeList<CR>
"let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db'
"let g:fuf_splitPathMatching=0

" PLUG-IN CONFIGURATIONS BELOW
" ******************************************

let g:netrw_list_hide='^\.DS_Store$,^.*\.pyc$'	" Hide certain files from netrw.

"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabContextDefaultCompletionType="<c-x><c-k>"
let g:SuperTabContextDefaultCompletionType="<c-p>"
"let g:SuperTabLongestHighlight = 1

" Super Awesome CTRLP
noremap <Leader>b :CtrlPBuffer<CR>

" UltiSnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" autocomplpop ***************************************************************
" complete option
set complete=.,w,b,u,t,k
let g:AutoComplPop_CompleteOption = '.,w,b,u,t,k'
set complete=.
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2

fu! DoRunAsPyBuffer()
    pclose! " force preview window closed
    setlocal ft=python
    
    " copy the buffer into a new window, then run that buffer through python
    sil %y a | below new | sil put a | sil %!python -
    " indicate the output window as the current previewwindow
    setlocal previewwindow ro nomodifiable nomodified

    " back into the original window
    winc p
endfu
command! RunAsPyBuffer call DoRunAsPyBuffer()
":noremap <Leader>r :RunAsPyBuffer<CR><CR>

fu! DoRunAsRubyBuffer()
    pclose! " force preview window closed
    setlocal ft=ruby

    " copy the buffer into a new window, then run that buffer through python
    sil %y a | below new | sil put a | sil %!ruby -
    " indicate the output window as the current previewwindow
    setlocal previewwindow ro nomodifiable nomodified

    " back into the original window
    winc p
endfu
command! RunAsRubyBuffer call DoRunAsRubyBuffer()
" :noremap <Leader>r :RunAsRubyBuffer<CR><CR>

colorscheme gruvbox
