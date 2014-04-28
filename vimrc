if has('vim_starting')
	set nocompatible               " Be iMproved

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
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-scripts/Pydiction'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

nnoremap <silent> <F5> :NERDTree<CR>

" VIM settings
syntax on
colorscheme zenburn

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1
set fileencoding=utf-8
set termencoding=utf-8
set mouse=a
"set number              " 行號
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set ai                     " 自動縮排
set list            
set listchars=tab:>_,trail:_
set tabstop=4              " tab使用四個空白取代
set shiftwidth=4           " 縮排空白數，要搭配set cin使用
set cin
set cursorline             " 該行的線
set t_Co=256               " 支援 256 色
set textwidth=0
set backspace=2            "按下backspace會後退，道行首後會刪除到前一行
set showmatch              "顯示括號配對情況
set nocompatible           "用vim的特性去運行，捨棄vi的特性

" vim statusline
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
