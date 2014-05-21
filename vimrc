" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
endif

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
NeoBundle 'Shougo/neocomplcache.vim'		"字詞補完，查找專案內的檔案
NeoBundle 'scrooloose/nerdtree'				"檔案總管
NeoBundle 'jlanzarotta/bufexplorer'			"開啟的檔案切換
NeoBundle 'kana/vim-fakeclip'				
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rkulla/pydiction.git'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'vim-scripts/Pydiction'
NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'vim-scripts/FuzzyFinder'
"NeoBundle 'vim-scripts/L9'
NeoBundle 'chusiang/vim-sdcv'				"字典
NeoBundle 'bling/vim-airline'

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
filetype on                "文件类型检测，自動判斷要載入的語法補完
syntax on
"colorscheme zenburn
colorscheme obsidian
"colorscheme codeschool
set t_Co=256
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
set number                "行號
set cursorline             "游標水平線
"set cursorcolumn          "游標重直線
"set colorcolumn=80
set textwidth=0
set backspace=2            "按下backspace會後退，道行首後會刪除到前一行
set showmatch              "顯示括號配對情況
set nocompatible           "用vim的特性去運行，捨棄vi的特性
set hlsearch               "搜尋反白
set incsearch              "搜尋即時查找
set history=1000
set clipboard=unnamedplus  "同少剪貼簿，相關套件 sudo apt-get install vim-gtk
"set fdm=indent

"sdcv
function! Mydict()
	let expl=system('sdcv -n ' . expand("<cword>"))
	windo if expand("%")=="diCt-tmp" | q!|endif
	25vsp diCt-tmp
	setlocal buftype=nofile bufhidden=hide noswapfile
	1s/^/\=expl/
	1
endfunction
nmap F :call Mydict()<CR>
"---------------------------------------------------------------------------
" Shortcuts
"---------------------------------------------------------------------------
"nnoremap <silent> <F5> :NERDTree<CR>
map<F5> :NERDTreeToggle<CR>
map<F6> :TlistToggle<CR>
"nmap <leader>w :call SearchWord()<CR>
set pastetoggle=<F12>						"縮排快速開關，貼上文字時使用，防止自動縮排

"---------------------------------------------------------------------------
" statusline
"---------------------------------------------------------------------------
set laststatus=2
"set statusline=%4*%<\ %1*[%F]
"set statusline+=%4*\ %5*[%{&encoding}, " encoding
"set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
"set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
"highlight User1 ctermfg=red
"highlight User2 term=underline cterm=underline ctermfg=green
"highlight User3 term=underline cterm=underline ctermfg=yellow
"highlight User4 term=underline cterm=underline ctermfg=white
"highlight User5 ctermfg=cyan
"highlight User6 ctermfg=white

"Aboout AirLine Start
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 0 
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" About AirLine End

"---------------------------------------------------------------------------
" package settings
"---------------------------------------------------------------------------
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20
let NERDTreeIgnore = ['\.pyc$']
let Tlist_Use_Right_Window   = 1


