" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
"=============================================================================
nnoremap <F9> :<C-u>edit ~/dotfiles/.bashrc<CR>
nnoremap <F10> :<C-u>edit$MYVIMRC<CR>
nnoremap <F11> :<C-u>edit$MYGVIMRC<CR>
nnoremap <F12> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>

"=============================================================================
" オプション
"=============================================================================
let $TEMPDIR = $TEMP
let $PATH  = $VIM. ';'
  \ . 'C:\msys32\usr\bin;'
  \ . 'C:\msys32\mingw32\bin;'
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
"set grepprg=pt\ --nocolor\ --nogroup\ --output-encode\ sjis
"set noundofile
set backupdir=$HOME/_vim/backup		  "バックアップファイルを作るディレクトリ
set directory=$HOME/_vim/backup		  "スワップファイル用のディレクトリ
set undodir=$HOME/_vim/backup              "undofile用のディレクトリ
set browsedir=buffer			  "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
"set list				  "タブ文字、行末など不可視文字を表示する
"set listchars=eol:$,tab:>\ ,extends:<	  "listで表示される文字のフォーマットを指定する
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block       "矩形選択で自由に移動
"set makeprg=./make.bat
"set errorformat=\"%f\"\\,%*[^0-9]%l:\ %m "一般的なCコンパイラ用
"
" Vimの補完(Ctrl-P/N)でインクルードされているファイルをスキャンしないようにするCommentsAdd Star
set complete=.,w,b,u,t

"set shell=c:\cygwin/bin/mintty.exe
"set shell=mintty.exe
"set shellcmdflag=-i\ /msys2.ico\ /usr/bin/bash\ --login 

"set shell=bash
"set shellcmdflag="-c"
"set shellcmdflag=--login\ -i
"set shellcmdflag=--login



" shellslashの設定
" shellslashは譲れない。（セパレータが\だと不便。）
" shellslashが設定されていると、quickrunが上手くいかない。
" vimprocを使えば解決できるみたい。だけど...
" set shellslash  "Windowsでディレクトリパスの区切り文字表示に / を使えるようにする

set nocompatible 
"set encoding=utf-8 
set fileencodings=ucs-bom,utf8,cp932,sjis,latin1 
set termencoding=cp932"

source $HOME/.vimrc_neobundle
"source $HOME/.vimrc_dein


"if has('win32') || has('win64')
"    function! s:hook_quickrun_windows()
"        let hook = {
"            \    'name' : 'myHook',
"            \    'kind' : 'hook',
"            \}
"
"        function! hook.init(session)
"            let self.save_shellslash = &shellslash
"            set noshellslash
"        endfunction
"
"        function! hook.sweep()
"            let &shellslash = self.save_shellslash
"            unlet! self.save_shellslash
"        endfunction
"
"        call quickrun#module#register(hook)
"        "autocmd MYAUTOCMD FileType quickrun setl ff=dos
"        autocmd FileType quickrun setl ff=dos
"
"    endfunction
"
"    call s:hook_quickrun_windows()
"endif



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
  autocmd BufRead,BufNewFile *.ngc setfiletype ngc
  autocmd BufRead,BufNewFile *.ncp setfiletype ngc
  autocmd BufRead,BufNewFile *.csv  set filetype=text
  autocmd BufRead,BufNewFile *.hta  set filetype=html
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
  autocmd BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
augroup END

"=============================================================================
" vim_singleton設定
"=============================================================================
"let g:singleton#opener="e"
"call singleton#enable()

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
"" NERDTree configuration
"=============================================================================
"let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
"let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeShowBookmarks=1
"let g:nerdtree_tabs_focus_on_files=1
"let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
"let g:NERDTreeWinSize = 50
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
"nnoremap <silent> <F2> :NERDTreeFind<CR>
"noremap <F3> :NERDTreeToggle<CR>

"=============================================================================
" clang-format設定
"=============================================================================
let g:clang_format#code_style='google'
let g:clang_format#style_options = {
      \ "ColumnLimit"                         : 150 ,
      \ "BreakBeforeBraces"                   : "Allman" ,
      \ "DerivePointerBinding"                : "false" ,
      \ "PointerBindsToType"                  : "false" ,
      \ "IndentCaseLabels"                    : "false" ,
      \ "AlignConsecutiveDeclarations"        : "true" ,
      \ "AllowShortCaseLabelsOnASingleLine"   : "true" ,
      \ "AllowShortIfStatementsOnASingleLine" : "true" ,
      \ "AllowShortLoopsOnASingleLine"        : "true" ,
      \ "AlignConsecutiveAssignments"         : "true" ,
      \ }
"let g:clang_format#detect_style_file=1

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer>,x <Plug>(operator-clang-format)

syntax keyword xTodo todo contained
syntax match xComment /%.*/ contains=xTodo 

"=============================================================================
" Tab機能設定
"=============================================================================
"set showtabline=2               " File tabs allways visible
nmap <C-tab> :tabnext<CR>
map  <C-tab> :tabnext<CR>
imap <C-tab> <ESC>:tabnext<CR>i

command! -nargs=? TabpageCD
  \ execute 'cd' fnameescape(<q-args>) | let t:cwd = getcwd()

augroup tabpagecwd
  autocmd!
  autocmd TabEnter * if !exists('t:cwd') | let t:cwd = getcwd() | endif |
    \  execute 'TabpageCD' fnameescape(t:cwd)
augroup END

"=============================================================================
"QuickFix Gtags
"=============================================================================
map <S-F6> :colder<CR>
map <S-F7> :cnewer<CR>
map <F6> :cn<CR>
map <F7> :cp<CR>
autocmd QuickFixCmdPost *grep* cwindow

"map <C-g> :Gtags 
"map <C-h> :Gtags -f %<CR>
"map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>
"
"=============================================================================
"Doxygen
"=============================================================================
let g:DoxygenToolkit_compactOneLineDoc = "yes" 
let g:DoxygenToolkit_commentType = "C++" 
let g:DoxygenToolkit_blockHeader="---------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------------------------------------------------" 

"=============================================================================
"Align
"=============================================================================
let g:Align_xstrlen = 3
nnoremap <silent> <C-k>  :<C-u>call ToggleCase()<CR>

"=============================================================================
" vim-table-mode
"=============================================================================
let g:table_mode_corner = '|'


"=============================================================================
"<F9>  文頭にタイムスタンプを挿入してinsertモードへ移行
"=============================================================================
" nmap <F8> <ESC>i----------------------<CR><C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR><CR><Up><Up>
"nmap <F8> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>----------------------<CR><CR><CR><Up><Up>
nmap <F8> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) _") <CR><CR>----------------------<CR>00:00-00:00<CR>00:00-00:00<CR><Up><Up>

"<leader>Wで現在のファイルをFirefoxで開く
"noremap <Leader>W :silent ! start firefox %<CR> 
nmap gw <Plug>(openbrowser-open)

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
 "nmap <Space>f [unite]
nmap ,u [unite]
   
""vimfilerをデフォルトのファイルマネージャーに設定する
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

"unite general settings
"インサートモードで開始
"let g:unite_enable_start_insert = 1

"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 30
 
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


"if executable('pt')
"  let g:unite_source_grep_command = 'pt'
"  let g:unite_source_grep_default_opts = '--nogroup --nocolor --output-encode sjis'
"  let g:unite_source_grep_recursive_opt = ''
"endif
"
"let g:unite_converter_file_directory_width =70
"call unite#custom_filters('file_mru',
"      \ ['matcher_file_name', 'sorter_default', 'converter_file_directory'])
"
"call unite#custom_filters('buffer',
"      \ ['matcher_file_name', 'sorter_default', 'converter_file_directory'])

"===================================================================
" vim-altr
"===================================================================
"nnoremap <Leader>a <Plug>(altr-forward)

"===================================================================
" previm
"===================================================================
let g:previm_open_cmd = 'start iexplore'

"===================================================================
" translategoogle
"===================================================================
let g:translategoogle_default_sl = 'ja'
let g:translategoogle_default_tl = 'en'

"===================================================================
" VimShell
"===================================================================
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"===================================================================
" todoリストを簡単に入力する
"===================================================================
abbreviate tl - [ ]

" todoリストのon/offを切り替える
"nnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>
"nnoremap <Leader><Leader> :call ToggleCheckbox()<CR>
nnoremap tc :call ToggleCheckbox()<CR>

function! ToggleCheckbox()
  let l:line = getline('.')
  if l:line =~ '^\-\s\[\s\]'
    let l:result = substitute(l:line, '^-\s\[\s\]', '- [x]', '')
    call setline('.', l:result)
  elseif l:line =~ '^\-\s\[x\]'
    let l:result = substitute(l:line, '^-\s\[x\]', '- [ ]', '')
    call setline('.', l:result)
  end
endfunction

