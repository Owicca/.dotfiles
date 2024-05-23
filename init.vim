set encoding=utf-8
scriptencoding utf-8
"set listchars=tab:»·,trail:·,extends:◣,precedes:◢,nbsp:○,eol:¬
"set list

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_LOG = 1

set nocompatible
set t_Co=256
"set mouse=
syntax enable
syntax on
filetype plugin indent on
set nowrap
set path+=**
set number "relativenumber
set incsearch hlsearch
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set smartindent
set splitright
set splitbelow
" yank to clipboard and paste from clipboard
"set clipboard+=unnamedplus

call plug#begin('~/.config/nvim/plugged')
"show modified files in left side bar
Plug 'mhinz/vim-signify'
"integrated debugger
"Plug 'dbgx/lldb.nvim'

"file browser
Plug 'scrooloose/nerdtree'
"git modification coloring in file browser
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'

"status bar at the bottom of the file display
Plug 'bling/vim-airline'

"ctags
Plug 'majutsushi/tagbar'
"Plug 'godlygeek/tabular'
"Plug 'davidhalter/jedi-vim', {'for': 'python'}

"add bracket end pair
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'for': 'go' }

"color scheme
Plug 'dikiaap/minimalist'

call plug#end()
"if has('nvim')
"	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"  let g:deoplete#enable_at_startup = 1
"else
"	Plug 'Shougo/deoplete.nvim'
"	Plug 'roxma/nvim-yarp'
"	Plug 'roxma/vim-hug-neovim-rpc'
"endif

let g:netrw_browsex_viewer="firefox"

" signify
let g:signify_vcs_list = ['git', 'svn']

" B
" deoplethe
"let g:deoplete#enable_at_startup = 1

" NERDtree
"autocmd vimenter * NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <M-d> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" jedi-vim
let g:jedi#use_tabs_not_buffers = 1


" tagbar
map <F3> :TagbarToggle fj<CR>
let g:tagbar_autoclose=0
autocmd BufEnter * nested :call tagbar#autoopen(0)
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" minimalist theme
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


colorscheme minimalist
"colorscheme colorsbox-material


" vim-go
let g:go_version_warning=0
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
let g:ale_sign_error = '!'
let g:ale_sign_warning = '~'
let g:airline#extensions#ale#enabled = 1
let g:go_auto_type_info = 1
au FileType go nmap <C-b> <Plug>(go-def)
