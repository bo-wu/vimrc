" Set up vim configure by myself
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set up plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible "be iMproved, required
filetype off
call plug#begin('~/.vim/plugged') "Keep Plugins between #begin/#end.
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'tikhomirov/vim-glsl'
Plug 'airblade/vim-gitgutter'
Plug 'beyondmarc/opengl.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nine2/vim-copyright'
Plug 'skywind3000/asyncrun.vim'
call plug#end()
filetype plugin indent on  " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bellow install from source list
" youcompleteme, ctrlp, airline, jedi, auotpep8
""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set fileencodings=utf-8,gbk
set scrolloff=4
set belloff=all
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
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tag_files = 0
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1  " feed ycm identifier with syntax keywords
let g:ycm_confirm_extra_conf=0
" let g:ycm_server_python_interpreter = '/usr/bin/python3'
"let g:ycm_auto_trigger = 1
"let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>'] 
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>'] 
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
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
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#buffer_nr_show=1 "buffer number
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enable = 1  "airline using ale
let g:airline_powerline_fonts = 1
let g:airline_theme="badwolf"
nnoremap <A-s> :bn<CR>
nnoremap <A-a> :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {'dir':'\v[\/]\.(git|hg|svn)', 'file':'\v\.(so|pyc)$'}
let g:indentLine_enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""
" ulti snips setting
""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<a-f>"
let g:snips_author = "Wu Bo"
let g:snips_email = "wubo.cs@gmail.com"
let g:snips_github = "https://github.com/bo-wu"
""""""""""""""""""""""""""""""""""""""""""""""
" ale
""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
nmap <Leader>a :ALEToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" copyright
""""""""""""""""""""""""""""""""""""""""""""""
let g:file_copyright_name = "Bo Wu"
let g:file_copyright_email = "wubo.cs@gmail.com"
""""""""""""""""""""""""""""""""""""""""""""""
" Auto format
""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>f :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
""""""""""""""""""""""""""""""""""""""""""""""
" AsyncRun
""""""""""""""""""""""""""""""""""""""""""""""
let $PYTHONUNBUFFERED=1
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:asyncrun_open = 4
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec 'AsyncRun -raw time python3 %'
    elseif &filetype == 'sh'
        :!time bash %
    endif
endfunc
""""""""""""""""""""""""""""""""""""""""""""""
" QuickFix
""""""""""""""""""""""""""""""""""""""""""""""
nmap <F7> :cn<cr>
nmap <F8> :cp<cr>
nmap <Leader>f :botright copen 4<cr>
nmap <Leader>c : cw<cr>
