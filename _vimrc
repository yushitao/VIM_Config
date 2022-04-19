"
let mapleader=" "

set encoding=utf-8
set pythonthreedll=python310.dll
syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap u i
noremap U I
noremap o u

noremap j h
noremap k j
noremap i k
noremap K 5j
noremap I 5k

noremap xx dd

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map <LEADER>f :set splitright<CR>:vsplit<CR>
map <LEADER>s :set nosplitright<CR>:vsplit<CR>
map <LEADER>e :set nosplitbelow<CR>:split<CR>
map <LEADER>d :set splitbelow<CR>:split<CR>

map ff <C-w>l
map ss <C-w>h
map ee <C-w>k
map dd <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe',{'commit':'d98f896'}

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()

color snazzy
"let g:SnazzyTransparent = 1

" ===
" === NERDTree
" ===
map <F2> :NERDTreeToggle<CR>
"let NERDTreeMapOpenExpl = "
"let NERDTreeMapUpdir = "
"let NERDTreeMapUpdirKeepOpen = "l
"let NERDTreeMapOpenSplit = "
"let NERDTreeOpenVSplit = "
"let NERDTreeMapActivateNode = "i
"let NERDTreeMapOpenInTab = "o
"let NERDTreeMapPreview = "
"let NERDTreeMapCloseDir = "n
"let NERDTreeMapChangeRoot = "y
"NERDTree快捷键映射关系
"let g:NERDTreeMapCustomOpen      = get(g:, 'NERDTreeMapCustomOpen',      '<CR>')
"let g:NERDTreeMapActivateNode    = get(g:, 'NERDTreeMapActivateNode',    'o')
"let g:NERDTreeMapChangeRoot      = get(g:, 'NERDTreeMapChangeRoot',      'C')
"let g:NERDTreeMapChdir           = get(g:, 'NERDTreeMapChdir',           'cd')
"let g:NERDTreeMapCloseChildren   = get(g:, 'NERDTreeMapCloseChildren',   'X')
"let g:NERDTreeMapCloseDir        = get(g:, 'NERDTreeMapCloseDir',        'x')
"let g:NERDTreeMapDeleteBookmark  = get(g:, 'NERDTreeMapDeleteBookmark',  'D')
"let g:NERDTreeMapMenu            = get(g:, 'NERDTreeMapMenu',            'm')
"let g:NERDTreeMapHelp            = get(g:, 'NERDTreeMapHelp',            '?')
"let g:NERDTreeMapJumpFirstChild  = get(g:, 'NERDTreeMapJumpFirstChild',  'K')
"let g:NERDTreeMapJumpLastChild   = get(g:, 'NERDTreeMapJumpLastChild',   'J')
"let g:NERDTreeMapJumpNextSibling = get(g:, 'NERDTreeMapJumpNextSibling', '<C-j>')
"let g:NERDTreeMapJumpParent      = get(g:, 'NERDTreeMapJumpParent',      'p')
"let g:NERDTreeMapJumpPrevSibling = get(g:, 'NERDTreeMapJumpPrevSibling', '<C-k>')
"let g:NERDTreeMapJumpRoot        = get(g:, 'NERDTreeMapJumpRoot',        'P')
"let g:NERDTreeMapOpenExpl        = get(g:, 'NERDTreeMapOpenExpl',        'e')
"let g:NERDTreeMapOpenInTab       = get(g:, 'NERDTreeMapOpenInTab',       't')
"let g:NERDTreeMapOpenInTabSilent = get(g:, 'NERDTreeMapOpenInTabSilent', 'T')
"let g:NERDTreeMapOpenRecursively = get(g:, 'NERDTreeMapOpenRecursively', 'O')
let g:NERDTreeMapOpenSplit       = get(g:, 'NERDTreeMapOpenSplit',       '<LEADER>e')
let g:NERDTreeMapOpenVSplit      = get(g:, 'NERDTreeMapOpenVSplit',      '<LEADER>s')
"let g:NERDTreeMapPreview         = get(g:, 'NERDTreeMapPreview',         'g'.NERDTreeMapActivateNode)
"let g:NERDTreeMapPreviewSplit    = get(g:, 'NERDTreeMapPreviewSplit',    'g'.NERDTreeMapOpenSplit)
"let g:NERDTreeMapPreviewVSplit   = get(g:, 'NERDTreeMapPreviewVSplit',   'g'.NERDTreeMapOpenVSplit)
"let g:NERDTreeMapQuit            = get(g:, 'NERDTreeMapQuit',            'q')
"let g:NERDTreeMapRefresh         = get(g:, 'NERDTreeMapRefresh',         'r')
"let g:NERDTreeMapRefreshRoot     = get(g:, 'NERDTreeMapRefreshRoot',     'R')
"let g:NERDTreeMapToggleBookmarks = get(g:, 'NERDTreeMapToggleBookmarks', 'B')
"let g:NERDTreeMapToggleFiles     = get(g:, 'NERDTreeMapToggleFiles',     'F')
"let g:NERDTreeMapToggleFilters   = get(g:, 'NERDTreeMapToggleFilters',   'f')
"let g:NERDTreeMapToggleHidden    = get(g:, 'NERDTreeMapToggleHidden',    'I')
"let g:NERDTreeMapToggleZoom      = get(g:, 'NERDTreeMapToggleZoom',      'A')
"let g:NERDTreeMapUpdir           = get(g:, 'NERDTreeMapUpdir',           'u')
"let g:NERDTreeMapUpdirKeepOpen   = get(g:, 'NERDTreeMapUpdirKeepOpen',   'U')
"let g:NERDTreeMapCWD             = get(g:, 'NERDTreeMapCWD',             'CD')
"let g:NERDTreeMenuDown           = get(g:, 'NERDTreeMenuDown',           'j')
"let g:NERDTreeMenuUp             = get(g:, 'NERDTreeMenuUp',             'k')



" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "?",
    \ "Staged"    : "?",
    \ "Untracked" : "?",
    \ "Renamed"   : "?",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "?",
    \ "Dirty"     : "?",
    \ "Clean"     : "??",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
"nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap g/ :YcmCompleter GetDoc<CR>
"nnoremap gt :YcmCompleter GetType<CR>
"nnoremap gr :YcmCompleter GoToReferences<CR>
nnoremap <LEADER>t :let g:ycm_auto_trigger=0<CR>
nnoremap <LEADER>y :let g:ycm_auto_trigger=1<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_semantic_triggers =  {'c,cpp,python,java,go,erlang,perl':['re!\w{2}'],'cs,lua,javascript':['re!\w{2}'],}
"ycm默认需要按ctrl + space 来进行补全，可以在上面的花括号里面加入下面两行代码来直接进行补全[不需要按键]

let g:ycm_add_preview_to_completeopt = 0