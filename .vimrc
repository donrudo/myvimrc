execute pathogen#infect()
syntax on
set background=dark
colors desertEx

set nobackup       
set nowritebackup  
set noswapfile     
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
filetype plugin on
set omnifunc=syntaxcomplete#Complete

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set nu
set cursorline
highlight LineNr term=bold cterm=bold ctermfg=White ctermbg=Black gui=NONE guifg=DarkGrey guibg=Black
highlight CursorLine cterm=NONE ctermbg=Black guibg=Black

set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
nmap <F8> :TagbarToggle<CR>
