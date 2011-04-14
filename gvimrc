" VIM Gui Configuration

" choose a your favourite scheme here
colorscheme vividchalk

" OS Specific *****************************************************************
if has("gui_macvim")

  " fullscreen options (MacVim only), resized window when changed to fullscreen
  set fuoptions=maxvert,maxhorz 
  set guifont=DejaVu\ Sans\ Mono:h12
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L
  set guioptions-=m
  set guioptions-=T  " remove toolbar
  "set stal=2 " turn on tabs by default
  
elseif has("gui_gtk2")

  set guifont=DejaVu\ Sans\ Mono\ 10 "Note the different format from MacOSX above
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L
  set guioptions-=m
  set guioptions-=T  " remove toolbar
  set guioptions-=b

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set antialias " Antialias font

" Default size of window
set columns=150
set lines=40
set textwidth=120

" Tab headings 
set gtl=%t gtt=%F

" Scrollbars ******************************************************************
set sidescrolloff=0
set scrolloff=0
set numberwidth=4
