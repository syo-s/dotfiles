" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
"=============================================================================
nnoremap <F9> :<C-u>edit ~/dotfiles/.bashrc<CR>
nnoremap <F10> :<C-u>edit$MYVIMRC<CR>
nnoremap <F11> :<C-u>edit$MYGVIMRC<CR>
"nnoremap <F12> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>
nnoremap <F12> :<C-u>source$MYVIMRC<CR>
set shellslash " (Windows向け)パス区切りをスラッシュに

let g:cache_home = empty($XDG_CACHE_HOME) ? expand('~/_vim') : $XDG_CACHE_HOME
let g:backupdir = expand(g:cache_home.'/backup')
let &backupdir = g:backupdir  "バックアップファイルを作るディレクトリ
let &directory = g:backupdir  "スワップファイル用のディレクトリ
let &undodir = g:backupdir    "undofile用のディレクトリ
let g:neocomplete#data_directory    = expand(g:cache_home.'/etc/neocomplete')
let g:vimfiler_data_directory       = expand(g:cache_home.'/etc/vimfiler')
let g:vimshell_temporary_directory  = expand(g:cache_home.'/etc/VimShell')
let g:unite_data_directory          = expand(g:cache_home.'/etc/unite')
let g:neomru#file_mru_path          = expand(g:cache_home.'/etc/neomru/file')
let g:neomru#directory_mru_path     = expand(g:cache_home.'/etc/neomru/direcroty')
let g:ref_cache_dir                 = expand(g:cache_home.'/etc/vim_ref_cache')
let g:yankround_dir                 = expand(g:cache_home.'/etc/yankround')


"=============================================================================
" Plugin
"=============================================================================
"source $HOME/.vimrc_neobundle
"source $HOME/.vimrc_dein
source $HOME/.vimrc_minpac

filetype plugin indent on

set runtimepath+=$VIM
set pythonthreedll=$VIM/python3/python35.dll

"=============================================================================
" オプション
"=============================================================================
let $TEMPDIR = $TEMP
let $PATH  = $VIM. ';'
  \ . 'C:\home\app\MinGit\cmd;'
  \ . 'C:\home\app\MinGit\mingw64\bin;'
  \ . 'C:\home\app\MinGit\usr\bin;'
  \ . 'C:\msys64\usr\bin;'
  \ . 'C:\msys64\mingw64\bin;'
  \ . 'C:\msys32\usr\bin;'
  \ . 'C:\msys32\mingw32\bin;'
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
set browsedir=buffer			  "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block       "矩形選択で自由に移動

" Vimの補完(Ctrl-P/N)でインクルードされているファイルをスキャンしないようにするCommentsAdd Star
set complete=.,w,b,u,t

set nocompatible 
set fileencodings=ucs-bom,utf8,cp932,sjis,latin1 
set termencoding=cp932"
set formatoptions-=or "改行での自動コメントアウトを無効にする 
"set shellcmdflag=-c
"

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
  autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType markdown setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType python setlocal autoindent smartindent expandtab
  autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
  autocmd BufRead,BufNewFile,BufReadPre *.mu  set filetype=c
  autocmd BufRead,BufNewFile,BufReadPre *.dat set filetype=c
  autocmd BufRead,BufNewFile,BufReadPre *.csv set filetype=text
  autocmd BufRead,BufNewFile,BufReadPre *.hta set filetype=html
  autocmd BufRead,BufNewFile,BufReadPre *.txt set filetype=text
  autocmd BufRead,BufNewFile,BufReadPre *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
  autocmd BufRead,BufNewFile,BufReadPre *.coffee  set filetype=coffee
augroup END

"=============================================================================
" hz_ja.vim  覚書
"  Visualモード:
"   gHL 可能な文字を全て半角に変換する
"   gZL 可能な文字を全て全角に変換する
"   gHA ASCII文字を全て半角に変換する 
"   gHH ASCII文字を全て半角に変換する 
"   gZA ASCII文字を全て全角に変換する 
"   gHM 記号を全て半角に変換する      
"   gZM 記号を全て全角に変換する      
"   gHW 英数字を全て半角に変換する    
"   gZW 英数字を全て全角に変換する    
"   gHJ カタカナを全て半角に変換する  
"   gZJ カタカナを全て全角に変換する  
"   gZZ カタカナを全て全角に変換する  
" :[range]HzjaConvert {target}"
"   han_all 全ての全角文字→半角 
"   han_ascii 全角アスキー→半角 
"   han_kana 全角カタカナ→半角 
"   han_eisu 全角英数→半角 
"   han_kigou 全角記号→半角 
"   zen_all 全ての半角文字→全角 
"   zen_ascii 半角アスキー→全角 
"   zen_kana 半角カタカナ→全角 
"   zen_eisu 半角英数→全角 
"   zen_kigou 半角記号→全角 
"=============================================================================

"=============================================================================
set foldtext=FoldCCtext()
set foldcolumn=5
set fillchars=vert:\|
"set foldmethod=indent

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
" operator-camelize
"=============================================================================
map ,c <plug>(operator-camelize-toggle)
"map <leader>c <plug>(operator-camelize)
"map <leader>C <plug>(operator-decamelize)


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
            \ "ColumnLimit" : 100,
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
" vim-syntastic
"=============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler = 'clang'

"command Prettify :%s/></>\r</g | filetype indent on | setf xml | normal gg=G

"=============================================================================
" vim-table-mode
"=============================================================================
let g:table_mode_corner = '|'

"=============================================================================
"<F9>  文頭にタイムスタンプを挿入してinsertモードへ移行
"=============================================================================
"nmap <F8> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) _") <CR><CR>----------------------<CR>00:00-00:00<CR>00:00-00:00<CR><Up><Up>

""=============================================================================
""unite.vim
""vimfiler.vim
""=============================================================================
nnoremap [unite] <Nop>
nmap ,u [unite]
   
""vimfilerをデフォルトのファイルマネージャーに設定する
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

"インサートモードで開始
"let g:unite_enable_start_insert = 1

"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 30
 
"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

let g:unite_update_time = 100 

nnoremap <silent> [unite]p :<C-u>Unite file_rec<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> [unite]cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

let s:unite_ignore_file_rec_patterns=
      \ ''
      \ .'vendor/bundle\|.bundle/\|\.sass-cache/\|'
      \ .'node_modules/\|bower_components/\|'
      \ .'RELEASE/\|C2Proj/\|'
      \ .'\.\(bmp\|gif\|jpe\?g\|png\|webp\|ai\|psd\)"\?$'

"call unite#custom#source(
"      \ 'file_rec/async,file_rec/git',
"      \ 'ignore_pattern',
"      \ s:unite_ignore_file_rec_patterns)
"

""=============================================================================
""Denite.vim
""=============================================================================
nnoremap [denite] <Nop>
nmap ,d [denite]
nnoremap <silent> [denite]p :<C-u>Denite file_rec<CR>
nnoremap <silent> [denite]b :<C-u>Denite buffer<CR>
nnoremap <silent> [denite]m :<C-u>Denite file_mru<CR>
nnoremap <silent> [denite]g  :<C-u>Denite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> [denite]cg :<C-u>Denite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

"packadd denite
"call denite#custom#source(
"	\ 'file_mru', 'matchers', ['matcher/substring', 'matcher/project_files'])
"call denite#custom#source(
"	\ 'file/rec', 'matchers', ['matcher/cpsm'])
"
" call denite#custom#option('default', 'prompt', '>')
" 
" " unite っぽいキーバインドに近づける
" " denite/insert モードのときは，C- で移動できるようにする
" call denite#custom#map('insert', "<C-j>", '<denite:move_to_next_line>')
" call denite#custom#map('insert', "<C-k>", '<denite:move_to_previous_line>')
" 
" " tabopen や vsplit のキーバインドを割り当て
" "call denite#custom#map('insert', "<C-t>", '<denite:do_action:tabopen>')
" "call denite#custom#map('insert', "<C-v>", '<denite:do_action:vsplit>')
" "call denite#custom#map('normal', "v", '<denite:do_action:vsplit>')
" 
" " jj で denite/insert を抜けるようにする
" call denite#custom#map('insert', 'jj', '<denite:enter_mode:normal>')

"===================================================================
" VimShell
"===================================================================
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"===================================================================
" caw コメントアウト
"===================================================================
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)


"===================================================================
" vim-over 置換
"===================================================================
" over.vimの起動
nnoremap <silent> <Leader>m :OverCommandLine<CR>

" カーソル下の単語をハイライト付きで置換
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>

" コピーした文字列をハイライト付きで置換
nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>


"===================================================================
" yankroud 
"===================================================================
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)


"===================================================================
" kaoriya cmdex.vimから、
"===================================================================
" :CdCurrent
"   Change current directory to current file's one.
command! -nargs=0 CdCurrent cd %:p:h

