set cindent
colorscheme candy
set nocompatible
filetype on
set history=1000
syntax on
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set vb t_vb=
set ruler
set nohls
set incsearch
set showmatch
set mouse=
set hlsearch
set nonumber

if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
endif

