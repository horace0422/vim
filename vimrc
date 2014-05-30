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
"NeoBundle 'vim-scripts/AutoComplPop'		"字詞補完
NeoBundle 'Shougo/neocomplcache.vim'		"字詞補完，查找專案內的檔案
NeoBundle 'scrooloose/nerdtree'				"檔案總管
NeoBundle 'jlanzarotta/bufexplorer'			"開啟的檔案切換 \be \bs \bv
NeoBundle 'kien/ctrlp.vim'					"快速搜尋檔案名稱
NeoBundle 'vim-scripts/taglist.vim'			"function tag list
NeoBundle 'bling/vim-airline'				"下面狀態列
NeoBundle 'c9s/colorselector.vim'			"配色選擇器 SelectColorS, EditCurrentColorS
NeoBundle 'ap/vim-css-color'				"CSS 顏色顯示

NeoBundle 'rkulla/pydiction'				"python 語法補完 tab
NeoBundle 'vim-scripts/php.vim'				"php 語法補完

NeoBundle 'scrooloose/syntastic'			"語法檢查
NeoBundle 'tomtom/checksyntax_vim'			"語法檢查

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"NeoBundleUpdate

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
filetype indent on                "文件类型检测，自動判斷要載入的語法補完
syntax on
"colorscheme zenburn
colorscheme obsidian
"colorscheme jellybeans

set t_Co=256
set guifont=Monaco:h11

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
set mouse=vn
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

"---------------------------------------------------------------------------
" Shortcuts
"---------------------------------------------------------------------------
map<F3> :call SearchWord()<CR>
map<F4> :q<CR>
map<F5> :NERDTreeToggle<CR>
map<F6> :TlistToggle<CR>

set pastetoggle=<F12>						"縮排快速開關，貼上文字時使用，防止自動縮排
"set keywordprg=sdcv
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

"---------------------------------------------------------------------------
" package settings
"---------------------------------------------------------------------------
"neocomplcache
let g:neocomplcache_enable_at_startup = 1

"pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20

"NERDTree
let NERDTreeIgnore = ['\.pyc$']

"taglist
let Tlist_Use_Right_Window   = 1

"ctrlp
let g:ctrlp_clear_cache_on_exit = 0						"離開 vim 後不要清 cache
let g:ctrlp_max_files = 100000							"加大 cache 索引的檔案數, 否則會漏找檔案
let g:ctrlp_user_command = 'find %s -type f'			"使用 find 加速建索引的速度

"AirLine
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 0 
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

"scrooloose/syntastic
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_aggregate_errors = 1
"---------------------------------------------------------------------------
" function
"---------------------------------------------------------------------------
function! SearchWord()
	let expl=system('sdcv -n ' .
				\  expand("<cword>"))
	windo if
				\ expand("%")=="diCt-tmp" |
				\ q!|endif
	25vsp diCt-tmp
	setlocal buftype=nofile bufhidden=hide noswapfile
	1s/^/\=expl/
	1
endfunction


if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif
