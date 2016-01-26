" modify file in users/vim73/_vimrc"
" on windows replace users with username
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
" PLUGINS
	" source plugin/matchit.vim 
	" filetype plugin on
	" vim let g:rainbow_active = 1 
	let g:airline#extensions#tabline#enabled = 1
" GUI
	set guifont=Courier_New
	syn on
	set modeline
	" statusline
	set ls=2
	set nu
	set fileencodings=utf-8
	set enc=utf-8
	set guifont=Courier_New
	set modeline
	"visualize whitespace
	"set list
	"set listchars=tab:.,trail:.,extends:#,nbsp:.

" COMMANDS
	:command Python set tabstop=2|set shiftwidth=2|set nu|set et
	:command Fuck e ~/.vimrc
	"cpp compile
	:map <F9> :make run-test<CR>
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

