" Set up vim configure by myself
"""""""""""""""""""""""""""""""""""""""""
"" set up vundle
"""""""""""""""""""""""""""""""""""""""""
set nocompatible "be iMproved, required
filetype off
""set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'tikhomirov/vim-glsl'
Plugin 'beyondmarc/opengl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'w0rp/ale'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} "The sparkup vim script is in a subdirectory of this repo called vim.
call vundle#end()
filetype plugin indent on  " required
"  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cachehttps://github.com/bo-wu
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"basic vim settings"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu           " display the line number
set wildmenu     " Turn on wildmenu, useful on commandline completetion
set ruler        " Always show current position
set mouse=a      " use the mouse
set history=500  " record history
set textwidth=79 " set the text width
set colorcolumn=79
set backspace=2
set autochdir
set autoread 	 " auto read file after modified
set encoding=utf8
set cmdheight=2  " avoid create new cpp error from ycm, donot understand
set scrolloff=4
syntax on        " syntax highlight
au FocusLost * silent! wa " autosave files when it loses the focus
au BufReadPost * exe "normal! g`\""
""""""""""""""""""""""""""""""""""""""
"indent match search"
""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent  
""set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set ignorecase   " ignore case when searching
set smartcase
set incsearch    " search while typing
set hlsearch
set showmatch    " show the match result
"""""""""""""""""""""""""""""""""""""""""
"check spell & fold"
"""""""""""""""""""""""""""""""""""""""""
let mapleader= ","
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en
set foldlevel=99
set foldnestmax=3
set foldmethod=indent
"set nofoldenable
nnoremap <space> za
""""""""""""""""""""""""""""""""""""""
"colorscheme for debian"
""""""""""""""""""""""""""""""""""""""
set guifont=Monaco\ 13 "Monospace\ 15
set background=dark
if has('gui_running')
	colorscheme solarized "candidate molokai desert tango2 two2tango solarized
	set guioptions-=m "remove menubar
	set guioptions-=T "remove toolbar
	set guioptions-=L "remove the left side scroll bar 
	set guioptions-=l
else 
	colorscheme oceandeep		
endif
""""""""""""""""""""""""""""""""""""""""""""""""
" YCM configure
""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tag_files = 0
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1  " feed ycm identifier with syntax keywords
let g:ycm_confirm_extra_conf=0
"let g:ycm_auto_trigger = 1
"let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-k> <C-w><Up>
nnoremap <C-j> <C-w><Down>
nnoremap <C-l> <C-w><Right>
nnoremap <C-h> <C-w><Left>
""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter <leader>cc, <leader>cu, <leader>c<space>
" NERDTree settings
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTree_title="[NERDTree]"
let g:NERDTreeIgnore=['\.pyc$', '\~$']
let g:winManagerWindowLayout="NERDTree|TagList"
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show=1 "buffer number
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
nnoremap <A-k> :bn<CR>
nnoremap <A-j> :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'
let g:indentLine_enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""
" ulti snips setting
""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<a-f>"
let g:snips_author = "Wu Bo"
let g:snips_email = "wubo.cs@gmail.com"
let g:snips_github = "https://github.com/bo-wu"
