if has('vim_starting')
    set nocompatible

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rkulla/pydiction.git'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'vim-scripts/Pydiction'
NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'vim-scripts/FuzzyFinder'


" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"---------------------------------------------------------------------------
" Encoding
"---------------------------------------------------------------------------
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

"fun! ViewUTF8()
"	set encoding=utf-8
"	set termencoding=big5
"endfun

"fun! UTF8()
"	set encoding=utf-8
"	set termencoding=big5
"	set fileencoding=utf-8
"	set fileencodings=ucs-bom,big5,utf-8,latin1
"endfun

"fun! Big5()
"	set encoding=big5
"	set fileencoding=big5
"endfun

"---------------------------------------------------------------------------
" Theme
"---------------------------------------------------------------------------
filetype on                "文件类型检测
syntax on
"colorscheme zenburn
colorscheme obsidian
"colorscheme wombat256mod
set t_Co=256
"set background=dark
set guifont=Monaco:h11
"
"---------------------------------------------------------------------------
" Tab and Spacebar
"---------------------------------------------------------------------------
set list
set listchars=tab:>_,trail:.
set cin
set shiftwidth=4           " 縮排空白數，要搭配set cin使用
set tabstop=4              " tab使用空白取代

"---------------------------------------------------------------------------
" Other
"---------------------------------------------------------------------------
set autoread               "正在編輯文件被其它程序改動時reload
set autoindent             "设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set smartindent            "智能对齐方式
"set cindent               "使用 C/C++ 语言的自动缩进方式
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     " 设置C/C++语言的具体缩进方式
set wrap                   "自动换行
set linebreak              "整词换行
set mouse=a
"set number                "行號
set cursorline             "該行的線
"set cursorcolumn
set textwidth=0
set backspace=2            "按下backspace會後退，道行首後會刪除到前一行
set showmatch              "顯示括號配對情況
set nocompatible           "用vim的特性去運行，捨棄vi的特性
set hlsearch               "搜尋反白
set incsearch              "搜尋即時查找
set history=1000

"set fdm=indent


"---------------------------------------------------------------------------
" Shortcuts
"---------------------------------------------------------------------------
"nnoremap <silent> <F5> :NERDTree<CR>
map<F5> :NERDTreeToggle<CR>
map<F6> :TlistToggle<CR>
set pastetoggle=<F12>

"---------------------------------------------------------------------------
" statusline
"---------------------------------------------------------------------------
set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

"---------------------------------------------------------------------------
" package settings
"---------------------------------------------------------------------------
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20

let NERDTreeIgnore = ['\.pyc$']

