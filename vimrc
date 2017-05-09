:filetype on
set nocompatible
set backspace=2
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

autocmd FileType python set omnifunc=pythoncomplete#Complete
 
set rtp+=~/.vim/bundle/vundle
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.java exec ":call SetTitle()"
func SetTitle()
        if &filetype == 'sh'
                call setline(1,"\#########################################################################")
                call append(line("."), "\# File Name: ".expand("%"))
                call append(line(".")+1, "\# Author:Tom")
                call append(line(".")+2, "\# eSpace:zwx462109")
                call append(line(".")+3, "\# Email:zhangzhiheng@mail01.huawei.com")
                call append(line(".")+4, "\# Blog :www.zhangxiaoheng.cn")
                call append(line(".")+5, "\# Created Time: ".strftime("%c"))
                call append(line(".")+6, "\#########################################################################")
                call append(line(".")+7,"\#!/bin/bash")
                call append(line(".")+8, "")
        elseif &filetype == 'python'
                call setline(1,"\#!/usr/bin/env python")
                call append(line("."),"\#########################################################################")
                call append(line(".")+1, "\# File Name: ".expand("%"))
                call append(line(".")+2, "\# Author:Tom")
                call append(line(".")+3, "\# eSpace:zwx462109")
                call append(line(".")+4, "\# Email:zhangzhiheng@mail01.huawei.com")
                call append(line(".")+5, "\# Blog :www.zhangxiaoheng.cn")
                call append(line(".")+6, "\# Created Time: ".strftime("%c"))
                call append(line(".")+7, "\#########################################################################")
                call append(line(".")+8, "")
        else
                call setline(1, "/*************************************************************************")
                call append(line("."), "    > File Name: ".expand("%"))
                call append(line(".")+1, "\# File Name: ".expand("%"))
                call append(line(".")+2, "\# Author:Tom")
                call append(line(".")+3, "\# eSpace:zwx462109")
                call append(line(".")+4, "\# Email:zhangzhiheng@mail01.huawei.com")
                call append(line(".")+5, "\# Blog :www.zhangxiaoheng.cn")
                call append(line(".")+6, "\# Created Time: ".strftime("%c"))
                call append(line(".")+7, " ************************************************************************/")
                call append(line(".")+8, "")
        endif
        if &filetype == 'cpp'
                call append(line(".")+6, "#include<iostream>")
                call append(line(".")+7, "using namespace std;")
                call append(line(".")+8, "")
        endif
        if &filetype == 'c'
                call append(line(".")+6, "#include<stdio.h>")
                call append(line(".")+7, "")
        endif
endfunc
autocmd BufNewFile * normal G				
