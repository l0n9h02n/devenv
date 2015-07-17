if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
augroup filetypedetect
au! BufRead,BufNewFile *.ros setfiletype php
augroup END
