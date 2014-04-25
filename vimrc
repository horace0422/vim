if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
	
call neobundle#rc(expand('~/.vim/bundle/'))
	
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github

" -> TO DO <-
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'kien/ctrlp.vim'


filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

syntax on
set t_Co=256
colorscheme zenburn



