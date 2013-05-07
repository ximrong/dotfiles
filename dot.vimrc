set nocompatible

if has('vim_starting')
endif

filetype off
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'ref.vim'
NeoBundle 'shawncplus/php.vim'

filetype plugin indent on

set autoindent
set backspace=start,indent,eol
set cursorline
set expandtab
set hlsearch
set incsearch
set noignorecase
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set tabstop=4
set wildmenu
set wrap
set wrapscan
syntax on

autocmd FileType php :set dictionary=~/.vim/dictionary/php.dict
let g:ref_phpmanual_path = '~/.vim/manual/php-chunked-xhtml'

autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\ %l

