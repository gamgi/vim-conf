set nocompatible              " be iMproved, required
filetype off                  " required

" modify file in users/vim73/_vimrc"
" on windows replace users with username
" PATHS
:cd programming/
" TAB settings
	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
	set autoindent
	set hidden
	set expandtab
" NAVigation
	map <F2> :bprevious<CR>
	map <F3> :bnext<CR>
	map <Left> :bprevious<CR>
	map <Right> :bnext<CR>
	map § :bnext<CR>
	" backspace
	set bs=2
	" disable arrows
	noremap  <Up> ""
	noremap! <Up> <Esc>
	noremap  <Down> ""
	noremap! <Down> <Esc>
	noremap  <Left> ""
	noremap! <Left> <Esc>
	noremap  <Right> ""
	noremap! <Right> <Esc>
    " Leader key is , insted of \
    let mapleader = ','
    
" PLUGINS
	" source plugin/matchit.vim 
	" filetype plugin on

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-fugitive'
    Plugin 'luochen1990/rainbow'
    Plugin 'drmikehenry/vim-fontsize'
    Plugin 'majutsushi/tagbar'
    Plugin 'ctrlpvim/ctrlp.vim'
    "Plugin 'Yggdroot/indentLine'
    
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    "Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    "Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
"# PLUGIN configs general
    let g:airline#extensions#tabline#enabled = 1
	let g:rainbow_active = 1 
" PLUGIN configs NerdTree
    " ctrl-n opens tree
    map <C-n> :NERDTreeToggle<CR>
    " If only window is tree. Quit.
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" CTAGS
    " look in local dir for tags
    set tags=tags;/
    " hide tagbar php variables
    let g:tagbar_type_php  = {
    \ 'ctagstype' : 'php',
    \ 'kinds'     : [
        \ 'i:interfaces',
        \ 'c:classes',
        \ 'd:constant definitions',
        \ 'f:functions',
        \ 'j:javascript functions:1'
    \ ]
  \ }
" GUI
	"set guifont=Courier_New
    " using Source Code Pro
    set anti enc=utf-8
    set guifont=Source\ Code\ Pro\ 16
	syn on
	set modeline
	" statusline
	set ls=2
	set nu
	set fileencodings=utf-8
	set enc=utf-8
	set modeline
	"visualize whitespace
	"set list
	"set listchars=tab:.,trail:.,extends:#,nbsp:.
    set listchars=tab:▸\ ,eol:¬
    
" COMMANDS
	:command Python set tabstop=2|set shiftwidth=2|set nu|set et
	:command Fuck e ~/.vimrc
	"cpp compile
	:map <F9> :make run-test<CR>
    " <leader>v selects pasted text
    nnoremap <leader>v V`]
    " <leader>t opens tagbar
    nnoremap <leader>t :TagbarToggle<CR>
    " <leader>g go to def
    nnoremap <leader>g <C-]>
" SETTINGS
	"Incasesensitive search
    set ignorecase
	set incsearch
	"external .vimrc files
	" "set exrc
	" set secure
	
	
"Quickfix screen toggle
" from http://learnvimscriptthehardway.stevelosh.com/chapters/38.html
nnoremap <leader>q :call QuickfixToggle()<cr>
let g:quickfix_is_open = 0
function! QuickfixToggle()
    if g:quickfix_is_open
    ¦   cclose
    ¦   let g:quickfix_is_open = 0
    else
    ¦   copen
    ¦   let g:quickfix_is_open = 1
    endif
endfunction

