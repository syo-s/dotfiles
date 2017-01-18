" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
"=============================================================================
nnoremap <F9> :<C-u>edit ~/dotfiles/.bashrc<CR>
nnoremap <F10> :<C-u>edit$MYVIMRC<CR>
nnoremap <F11> :<C-u>edit$MYGVIMRC<CR>
"nnoremap <F12> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>
nnoremap <F12> :<C-u>source$MYVIMRC<CR>

"=============================================================================
" Plugin
"=============================================================================
"source $HOME/.vimrc_neobundle
source $HOME/.vimrc_dein

filetype plugin indent on

"=============================================================================
" オプション
"=============================================================================
let $TEMPDIR = $TEMP
let $PATH  = $VIM. ';'
  \ . 'C:\msys32\mingw32\bin;'
  \ . 'C:\msys32\usr\bin;'
  \ . 'C:\windows\System32\;'
  \ . $HOME
  \ . $PATH

let $MSYSTEM='MINGW32'
let $MSYSCON='mintty.exe'

set wildmenu
set wildmode=longest:full,full
set tags=tags;
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hidden
set noignorecase			  "検索時の大文字,小文字を区別する
set cindent
set nowrap
set number				  " 行番号を非表示 (number:表示)
set grepprg=internal			  "
set backupdir=$HOME/_vim/backup		  "バックアップファイルを作るディレクトリ
set directory=$HOME/_vim/backup		  "スワップファイル用のディレクトリ
set undodir=$HOME/_vim/backup              "undofile用のディレクトリ
set browsedir=buffer			  "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block       "矩形選択で自由に移動
"
" Vimの補完(Ctrl-P/N)でインクルードされているファイルをスキャンしないようにするCommentsAdd Star
set complete=.,w,b,u,t

set nocompatible 
set fileencodings=ucs-bom,utf8,cp932,sjis,latin1 
set termencoding=cp932"


"=============================================================================
" ファイルの関連付け 
"=============================================================================
augroup vimrc
  autocmd!
  autocmd FileType perl setlocal shiftwidth=4 tabstop=2 softtabstop=2
  autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType css  setlocal shiftwidth=4 tabstop=2 softtabstop=2
  autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType markdown setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType python setlocal autoindent smartindent expandtab
  autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
  autocmd BufRead,BufNewFile *.mu  set filetype=c
  autocmd BufRead,BufNewFile *.dat set filetype=c
  autocmd BufRead,BufNewFile *.csv set filetype=text
  autocmd BufRead,BufNewFile *.hta set filetype=html
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
  autocmd BufRead,BufNewFile,BufReadPre *.coffee  set filetype=coffee
augroup END


"=============================================================================
" easy_motion設定
"=============================================================================
map <Space> <Plug>(easymotion-s2)

"=============================================================================
" easyalign設定
"=============================================================================
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

let g:easy_align_ignore_groups = ['String']

"=============================================================================
" JpFormat設定
"=============================================================================
 " 原稿文字数(全角の折り返し文字数)
 let JpCountChars = 39
 " 原稿行数
 let JpCountLines = 17
 " 禁則処理の最大ぶら下がり字数(-1なら全てぶら下げ)
 let JpCountOverChars = 2

"=============================================================================
" clang-format設定
"      \ "BreakBeforeBraces"                   : "Allman" 
"=============================================================================
let g:clang_format#code_style='google'
let g:clang_format#style_options = {
            \ "ColumnLimit" : 80,
            \ "BreakBeforeBraces" : "Linux" ,
            \ "DerivePointerBinding" : "false" ,
            \ "PointerBindsToType" : "false" ,
            \ "IndentCaseLabels" : "false" ,
            \ "BinPackParameters" : "false" ,
            \ "BinPackArguments" : "false" ,
            \ "AlignConsecutiveDeclarations" : "true" ,
            \ "AllowShortCaseLabelsOnASingleLine" : "true" ,
            \ "AllowShortIfStatementsOnASingleLine" : "true" ,
            \ "AllowShortLoopsOnASingleLine" : "true" ,
            \ "AlignConsecutiveAssignments" : "true" }

let g:clang_format#detect_style_file=1
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer>,x <Plug>(operator-clang-format)

syntax keyword xTodo todo contained
syntax match xComment /%.*/ contains=xTodo 

"=============================================================================
"QuickFix Gtags
"=============================================================================
map <S-F6> :colder<CR>
map <S-F7> :cnewer<CR>
map <F6> :cn<CR>
map <F7> :cp<CR>
autocmd QuickFixCmdPost *grep* cwindow


"=============================================================================
" vim-table-mode
"=============================================================================
let g:table_mode_corner = '|'

"=============================================================================
"<F9>  文頭にタイムスタンプを挿入してinsertモードへ移行
"=============================================================================
nmap <F8> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) _") <CR><CR>----------------------<CR>00:00-00:00<CR>00:00-00:00<CR><Up><Up>

""=============================================================================
""quickrun.vim
""=============================================================================
" runner/vimproc/updatetime で出力バッファの更新間隔をミリ秒で設定できます
" updatetime が一時的に書き換えられてしまうので注意して下さい
"let g:quickrun_config = {
"      \   "_" : {
"      \       "hook/close_unite_quickfix/enable_hook_loaded" : 1,
"      \       "hook/unite_quickfix/enable_failure" : 1,
"      \       "hook/close_quickfix/enable_exit" : 1,
"      \       "hook/close_buffer/enable_failure" : 1,
"      \       "hook/close_buffer/enable_empty_data" : 1,
"      \       "hook/shabadoubi_touch_henshin/enable" : 1,
"      \       "hook/shabadoubi_touch_henshin/wait" : 20,
"      \       "outputter" : "multi:buffer:quickfix",
"      \       "outputter/buffer/split" : ":botright 8sp",
"      \       "outputter/buffer/into" : 1,
"      \       "outputter/buffer/running_mark" : "",
"      \       "runner" : "vimproc",
"      \       "runner/vimproc/updatetime" : 1000,
"      \   },
"      \   "python" : {
"      \       "cmdopt" : "-u"
"      \   },
"      \}

""=============================================================================
""unite.vim
""vimfiler.vim
""=============================================================================
let g:neocomplete#data_directory    = expand('$HOME/_vim/etc/neocomplete')
let g:vimfiler_data_directory       = expand('$HOME/_vim/etc/vimfiler')
let g:vimshell_temporary_directory  = expand('$HOME/_vim/etc/VimShell')
let g:unite_data_directory          = expand('$HOME/_vim/etc/unite')
let g:neomru#file_mru_path          = expand('$HOME/_vim/etc/neomru/file')
let g:neomru#directory_mru_path     = expand('$HOME/_vim/etc/neomru/direcroty')
let g:ref_cache_dir                 = expand('$HOME/_vim/etc/vim_ref_cache')
let g:yankround_dir                 = expand('$HOME/_vim/etc/.cache/yankround')

nnoremap [unite] <Nop>
nmap ,u [unite]
   
""vimfilerをデフォルトのファイルマネージャーに設定する
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

"インサートモードで開始
"let g:unite_enable_start_insert = 1

"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 50
 
"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

let g:unite_update_time = 1000 

nnoremap <silent> [unite]v :<C-u>VimFiler<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]p :<C-u>Unite file_rec<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> [unite]cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
nnoremap <silent> [unite]r  :<C-u>UniteResume search-buffer<CR>


"===================================================================
" VimShell
"===================================================================
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

