set nu					"顯示行號
set ic					"搜尋忽略大小寫
set is
set encoding=utf8		"預設編碼方式
set fileencodings=utf-8,big5
set termencoding=utf-8
set tabstop=4			"按Tab跳4格
set shiftwidth=4		"縮排空格為4格
set expandtab           "將Tab轉換為space
set showcmd				"在右下角顯示組合指令目前的輸入狀態
set viminfo='20,\"50
set history=100
set ruler
set incsearch			"關鍵字還沒完全輸入前就顯示結果
set hls					"搜尋關鍵字反白
set showmatch			"顯示對應括號
set ai					"自動縮排
set cin
set wildmenu			"顯示建議指令
set foldmethod=marker
set backspace=2
"set cursorcolumn
set cursorline
set modeline
set ls=2

colorscheme koehler
syntax on

filetype on
filetype plugin on

" {{{ relative line number by default
set relativenumber
let s:number_setting = 1
function ToggleNumber()
    if s:number_setting == 0
        set relativenumber
        let s:number_setting = 1
    elseif s:number_setting == 1
        set number
        let s:number_setting = 2
    else
        set nonumber
        set norelativenumber
        let s:number_setting = 0
    endif
endfunction
nmap qn :call ToggleNumber()<CR>
" }}}
