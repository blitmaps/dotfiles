" Set syntax highlighting to on
syntax on
" Set line numbering on
set number
set nowrap
" Colourscheme
colorscheme torte

" Mouse Enabled
set mouse=a
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[6 q"

set guifont="Cascadia Code Regular":h12

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

map <F2> :echo 'Current time is ' . strftime('%c')<CR>

function! RunBuild()
    :!sh build.sh
endfunction

nnoremap <F5> :call RunBuild()<CR>
