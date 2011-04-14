
" my filetype file
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au BufNewFile,BufRead *.html	setfiletype htmldjango.html
    "au BufNewFile,BufRead *.as		setfiletype actionscript
    "au BufNewFile,BufRead *.todo	setfiletype todo
augroup END

