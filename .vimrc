if $TERM == "xterm-256color"
    set t_Co=256
endif

if has('gui_running')
  colorscheme molokai 
endif

set number
syntax enable
filetype plugin indent on
filetype plugin on 

au FileType go colorscheme molokai
autocmd BufWritePre *.go GoImports

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd BufWritePost *.js JSHint

nmap <F8> :TagbarToggle<CR>

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'fatih/molokai'
Plug 'garyburd/go-explorer'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'mephux/vim-jsfmt'
Plug 'pangloss/vim-javascript'
Plug 'Shutnik/jshint2.vim'

call plug#end()

"Default \s configs
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"set expandtab
"set autoindent
"set autochdir


let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']

let g:SuperTabDefaultCompletionType = '<C-Tab>'

let g:js_fmt_autosave = 1


