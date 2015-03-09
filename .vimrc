" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
"=============================================================================
nnoremap <F10> :<C-u>edit$MYVIMRC<CR>
nnoremap <F11> :<C-u>edit$MYGVIMRC<CR>
nnoremap <F12> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>


"=============================================================================
" オプション
"=============================================================================
let $TEMPDIR = $TEMP
" let $PATH  = $VIM.'\bin;'
"       \ .'C:\MinGW-new\bin;'
"       \ .'C:\MinGW-new\msys\1.0\bin;'
"       \ .'C:\Program Files\Microsoft Visual Studio 10.0\VC\bin;'
"       \ .'C:\Program Files\Microsoft Visual Studio 10.0\Common7\IDE;'
"       \ .'C:\Program Files\Microsoft Visual Studio 10.0\Common7\IDE;'
"       \ .'C:\Program Files\Everything;'
"       \ .$PATH
"       \ " .'C:\cygwin\bin;'
"       \ " .'C:\cygwin\usr\local\bin;'
" let $PATH  = $VIM . $PATH

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
"set grepprg=pt\ --nocolor\ --nogroup
"set noundofile
set backupdir=$HOME/.vimbackup		  "バックアップファイルを作るディレクトリ
set directory=$HOME/.vimbackup		  "スワップファイル用のディレクトリ
set undodir=$HOME/.vimbackup              "undofile用のディレクトリ
set browsedir=buffer			  "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
"set list				  "タブ文字、行末など不可視文字を表示する
"set listchars=eol:$,tab:>\ ,extends:<	  "listで表示される文字のフォーマットを指定する
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block       "矩形選択で自由に移動
"set makeprg=./make.bat
"set errorformat=\"%f\"\\,%*[^0-9]%l:\ %m "一般的なCコンパイラ用
"
" Vimの補完(Ctrl-P/N)でインクルードされているファイルをスキャンしないようにするCommentsAdd Star
set complete=.,w,b,u,t

"set shell=c:\msys32\usr\bin\bash.exe
"set shell=c:\cygwin/bin/mintty.exe
"set shellcmdflag="-c"
"set shellcmdflag=--login\ -c

" shellslashの設定
" shellslashは譲れない。（セパレータが\だと不便。）
" shellslashが設定されていると、quickrunが上手くいかない。
" vimprocを使えば解決できるみたい。だけど...
"
" set shellslash  "Windowsでディレクトリパスの区切り文字表示に / を使えるようにする

set nocompatible 
"set encoding=utf-8 
set fileencodings=ucs-bom,utf8,cp932,sjis,latin1 
set termencoding=cp932"

"=============================================================================
" bundles 
"=============================================================================
if has('vim_starting')
  set nocompatible " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

if neobundle#has_fresh_cache(expand('$MYVIMRC'))
  NeoBundleLoadCache  " キャッシュの読込み
else 

  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'Shougo/vimproc.git', {
         \ 'build' : {
         \	    'windows' : 'make -f make_mingw32.mak',
         \	    'cygwin'  : 'make -f make_cygwin.mak',
         \	    'mac'     : 'make -f make_mac.mak',
         \	    'unix'    : 'make -f make_unix.mak',
         \	   },
         \ }


  "------------------------------------------------------------
  " 【unite】
  NeoBundle 'Shougo/unite.vim.git'       " 本体
  NeoBundle 'Shougo/unite-build.git'     " make build用
  NeoBundle 'Shougo/neomru.vim'          " ファイル履歴

  NeoBundle 'Shougo/vimshell.git'        " shell
  NeoBundle 'Shougo/vimfiler.git'        " filer
  NeoBundle 'Shougo/neocomplete.vim.git' " 補完
  NeoBundle 'Shougo/vinarise.vim'        " バイナリ編集

  NeoBundle 'hsitz/VimOrganizer.git'
  NeoBundle 'sgur/unite-everything.git'
  NeoBundle 'ujihisa/unite-colorscheme.git'
  NeoBundle 'ujihisa/unite-rake.git'
  NeoBundle 'h1mesuke/unite-outline.git'
  NeoBundle 'basyura/unite-converter-file-directory'
  NeoBundle 'basyura/unite-matcher-file-name'
  NeoBundle 'kmnk/vim-unite-giti.git'
  NeoBundle 'osyo-manga/unite-quickfix.git'
  NeoBundle 'thinca/vim-qfreplace.git'
  NeoBundle 'thinca/vim-quickrun.git'
  NeoBundle 'osyo-manga/shabadou.vim.git'
  NeoBundle 'thinca/vim-singleton.git'

  NeoBundle 'Lokaltog/vim-easymotion'
  NeoBundle 'terryma/vim-multiple-cursors.git'
  NeoBundle 'vim-scripts/DoxygenToolkit.vim.git'
  NeoBundle 'vim-scripts/gtags.vim.git'
  "NeoBundle 'mhinz/vim-startify.git'
  NeoBundle 'kana/vim-tabpagecd.git'
  "NeoBundle 'scrooloose/nerdtree.git'
  NeoBundle 'itchyny/calendar.vim.git'
  "NeoBundle 'ujihisa/quicklearn.git'
  "NeoBundle 'tanabe/ToggleCase-vim.git'
  "NeoBundle 'hrp/EnhancedCommentify.git'
  "NeoBundle 'vim-scripts/MultipleSearch.git'
  "NeoBundle 'vim-scripts/YankRing.vim.git'
  "NeoBundle 'kana/vim-altr'
  "NeoBundle 'supermomonga/projectlocal.vim'
  "NeoBundle 'fuenor/qfixhowm.git'
  "NeoBundle 'yuratomo/w3m.vim.git'
  "NeoBundle 'mattn/learn-vimscript.git'

  "NeoBundle 'MarcWeber/vim-addon-manager.git'
  "NeoBundle 'http://lh-vim.googlecode.com/svn/vim-lib/trunk'         ,{'name' : 'lh-vim-lib' }  
  "NeoBundle 'http://lh-vim.googlecode.com/svn/dev/trunk'             ,{'name' : 'lh-dev'     }  
  "NeoBundle 'http://lh-vim.googlecode.com/svn/map-tools/trunk'       ,{'name' : 'lh-brackets'}  
  "NeoBundle 'http://lh-vim.googlecode.com/svn/mu-template/trunk'     ,{'name' : 'mu-template'}  
  "NeoBundle 'http://lh-vim.googlecode.com/svn/refactor/trunk/',{'name': 'lh-refactor' }
  "NeoBundle 'LucHermitte/local_vimrc', {'depends': 'lh-vim-lib'}

  "------------------------------------------------------------
  " 【整形関係】
  NeoBundle 'h1mesuke/vim-alignta.git'
  "NeoBundle 'pix/vim-align.git'
  "NeoBundle 'vim-scripts/Align.git'
  NeoBundle 'junegunn/vim-easy-align.git'
  NeoBundle 'bkad/CamelCaseMotion.git'
  NeoBundle 'fuenor/JpFormat.vim.git'
  NeoBundle 'rhysd/vim-clang-format.git'
  NeoBundle 'deris/vim-rengbang.git'


  "------------------------------------------------------------
  " 【htmlプレビュー】
  NeoBundle 'tyru/open-browser.vim'
  NeoBundle 'mattn/mkdpreview-vim'
  NeoBundle 'mattn/webapi-vim'
  NeoBundle 'kannokanno/previm.git'
  NeoBundle 'kurocode25/mdforvim.git'


  "------------------------------------------------------------
  " 【翻訳】
  NeoBundle 'mattn/excitetranslate-vim.git'
  NeoBundle 'mattn/googletranslate-vim.git'

  "------------------------------------------------------------
  " 【バージョン管理】
  NeoBundle 'tpope/vim-fugitive.git' " VimからGitを使うためのプラグイン。
  NeoBundle 'gregsexton/gitv.git'    " git log代わりに使ってます。
  NeoBundle 'int3/vim-extradite.git' " Gitで管理されているファイルの差分を素早く見ることができます。
  NeoBundle 'thinca/vim-vcs.git'

  "------------------------------------------------------------
  " 【text-obj】
  NeoBundle 'kana/vim-textobj-user.git'    " 本体。
  NeoBundle 'kana/vim-textobj-indent.git'  " インデントをtextobj化。
  NeoBundle 'kana/vim-textobj-syntax.git'  " シンタックスで定義された部分をtextobj化。
  NeoBundle 'kana/vim-textobj-line.git'    " 行をtextobj化。
  NeoBundle 'kana/vim-textobj-fold.git'    " 折り畳みをtextobj化。
  NeoBundle 'kana/vim-textobj-entire.git'  " バッファ全体をtextobj化。
  NeoBundle 'thinca/vim-textobj-between.git' " 任意の区切り文字の間をtextobj化。
  NeoBundle 'thinca/vim-textobj-comment.git' " コメントをtextobj化。
  NeoBundle 'kana/vim-textobj-function.git' "関数をtextobj化
  NeoBundle 'kana/vim-textobj-underscore.git' "アンダースコアの間 a_, i_ 
  NeoBundle 'rhysd/textobj-wiw.git'         " snake_case 上の word a,w, i,w 
  "NeoBundle 'vimtaka/vim-textobj-sigil.git'   " perlの変数とかをtextobj化。
  "NeoBundle 'tpope/vim-surround.git'

  "------------------------------------------------------------
  "【operator】
  NeoBundle 'kana/vim-operator-user.git'     " 本体。
  NeoBundle 'kana/vim-operator-replace.git'  " レジスタの内容で選択範囲を置換できます。
  NeoBundle 'tyru/operator-camelize.vim.git' " 選択範囲をCamelCaseにしたりsnake_caseにしたりできます。
  NeoBundle 'tyru/operator-reverse.vim.git'  " 選択した行や範囲を逆にできます。
  NeoBundle 'rhysd/vim-operator-surround.git'

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "【python】 
  NeoBundle 'bps/vim-textobj-python.git'
  NeoBundle 'andviro/flake8-vim.git'
  NeoBundle 'hachibeeDI/vim-operator-autopep8.git'
  " indentの深さに色を付ける
  NeoBundle 'nathanaelkane/vim-indent-guides.git'

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "【ruby】 
  NeoBundle 'tpope/vim-rails.git'
  NeoBundle 'tpope/vim-bundler.git'
  NeoBundle 'tpope/vim-rake.git'
  NeoBundle 'tpope/vim-projectionist.git'

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "【cofee】 
  " syntax + 自動compile
  NeoBundle 'kchmck/vim-coffee-script'
  " js BDDツール
  NeoBundle 'claco/jasmine.vim'


  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " table
  NeoBundle 'godlygeek/tabular.git'
  NeoBundle 'dhruvasagar/vim-table-mode.git'

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " syntax
  NeoBundle 'vim-ruby/vim-ruby.git'
  NeoBundle 'moqada/autoit.vim--Breland.git'
  NeoBundle 'tpope/vim-cucumber.git'
  "NeoBundle 'tpope/vim-markdown.git'
  "NeoBundle 'plasticboy/vim-markdown.git'
  "NeoBundle 'rcmdnk/vim-markdown.git'
  "NeoBundle 'joker1007/vim-markdown-quote-syntax.git'

  "NeoBundle 'python-mode.git'
  NeoBundle 'aohta/blockdiag.vim.git'
  NeoBundle 'aklt/plantuml-syntax.git'
  "NeoBundle 'vim-scripts/autohotkey-ahk.git'
  "NeoBundle 'vim-scripts/scilab.vim.git'
  "NeoBundle 'vim-scripts/csv.vim.git'
  "NeoBundle 'chrisbra/csv.vim.git'


  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " colorscheme
  NeoBundle 'vim-scripts/bluegreen.git'
  NeoBundle 'w0ng/vim-hybrid.git'
  NeoBundle 'nanotech/jellybeans.vim.git'
  NeoBundle 'tomasr/molokai'

  NeoBundle 'bling/vim-airline.git'

  NeoBundleSaveCache  " キャッシュの書込み
endif

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" ~/neobundle.log にログを出力する
let g:neobundle#log_filename = $HOME . "/neobundle.log"


"set runtimepath+=~/.vim/bundle/vim-addon-manager/
"call vam#ActivateAddons([])
"VAMActivate tlib matchit.zip

"augroup MYAUTOCMD " {{{2
"    " todo: scriptId()
"    autocmd!
"    autocmd FileType vim
"    \   let &l:foldtext = string(function('s:vimFoldText')) . '()'
"augroup END

if has('win32') || has('win64')
    function! s:hook_quickrun_windows()
        let hook = {
            \    'name' : 'myHook',
            \    'kind' : 'hook',
            \}

        function! hook.init(session)
            let self.save_shellslash = &shellslash
            set noshellslash
        endfunction

        function! hook.sweep()
            let &shellslash = self.save_shellslash
            unlet! self.save_shellslash
        endfunction

        call quickrun#module#register(hook)
        "autocmd MYAUTOCMD FileType quickrun setl ff=dos
        autocmd FileType quickrun setl ff=dos

    endfunction

    call s:hook_quickrun_windows()
endif



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
let g:singleton#opener="e"
call singleton#enable()

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
            \ "ColumnLimit"          : 120 ,
            \ "BreakBeforeBraces"    : "Linux" ,
            \ "DerivePointerBinding" : "false" ,
            \ "PointerBindsToType"   : "false" ,
            \ "IndentCaseLabels"     : "false" ,
            \ }


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
" nmap <F9> <ESC>i----------------------<CR><C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR><CR><Up><Up>
nmap <F9> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>----------------------<CR><CR><CR><Up><Up>

"<leader>Wで現在のファイルをFirefoxで開く
"noremap <Leader>W :silent ! start firefox %<CR> 
nmap gw <Plug>(openbrowser-open)

""=============================================================================
""quickrun.vim
""=============================================================================
" runner/vimproc/updatetime で出力バッファの更新間隔をミリ秒で設定できます
" updatetime が一時的に書き換えられてしまうので注意して下さい
let g:quickrun_config = {
      \   "_" : {
      \       "hook/close_unite_quickfix/enable_hook_loaded" : 1,
      \       "hook/unite_quickfix/enable_failure" : 1,
      \       "hook/close_quickfix/enable_exit" : 1,
      \       "hook/close_buffer/enable_failure" : 1,
      \       "hook/close_buffer/enable_empty_data" : 1,
      \       "hook/shabadoubi_touch_henshin/enable" : 1,
      \       "hook/shabadoubi_touch_henshin/wait" : 20,
      \       "outputter" : "multi:buffer:quickfix",
      \       "outputter/buffer/split" : ":botright 8sp",
      \       "outputter/buffer/into" : 1,
      \       "outputter/buffer/running_mark" : "",
      \       "runner" : "vimproc",
      \       "runner/vimproc/updatetime" : 1000,
      \   },
      \   "python" : {
      \       "cmdopt" : "-u"
      \   },
      \}

""=============================================================================
""unite.vim
""vimfiler.vim
""=============================================================================

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


if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --output-encode sjis'
  let g:unite_source_grep_recursive_opt = ''
endif
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
