" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
"=============================================================================
nnoremap <F2> :<C-u>edit$MYVIMRC<CR>
nnoremap <F3> :<C-u>edit$MYGVIMRC<CR>
nnoremap <F4> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>


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

set shell=bash
"set shell=c:\cygwin/bin/mintty.exe
"set shellcmdflag="-c"
"set shellcmdflag=--login\ -c
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
"set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
"set list				  "タブ文字、行末など不可視文字を表示する
"set listchars=eol:$,tab:>\ ,extends:<	  "listで表示される文字のフォーマットを指定する
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block			  "矩形選択で自由に移動
"set makeprg=./make.bat
"set errorformat=\"%f\"\\,%*[^0-9]%l:\ %m "一般的なCコンパイラ用
"


" shellslashの設定
" shellslashは譲れない。（セパレータが\だと不便。）
" shellslashが設定されていると、quickrunが上手くいかない。
" vimprocを使えば解決できるみたい。だけど...
"
" set shellslash  "Windowsでディレクトリパスの区切り文字表示に / を使えるようにする
"

""=============================================================================
"" bundles 
""=============================================================================
filetype plugin indent off
if has('vim_starting')
  set nocompatible " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
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
NeoBundle 'Shougo/neocomplete.vim.git' " 保管
NeoBundle 'Shougo/vinarise.vim'

NeoBundle 'sgur/unite-everything.git'
NeoBundle 'ujihisa/unite-colorscheme.git'
NeoBundle 'ujihisa/quicklearn.git'
NeoBundle 'ujihisa/unite-rake.git'
NeoBundle 'h1mesuke/unite-outline.git'
NeoBundle 'basyura/unite-converter-file-directory'
NeoBundle 'basyura/unite-matcher-file-name'
NeoBundle 'kmnk/vim-unite-giti.git'
NeoBundle 'osyo-manga/unite-quickfix.git'
NeoBundle 'osyo-manga/shabadou.vim.git'

NeoBundle 'bkad/CamelCaseMotion.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-bundler.git'
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-projectionist.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'thinca/vim-qfreplace.git'

"------------------------------------------------------------
" 【バージョン管理】
NeoBundle 'tpope/vim-fugitive.git' " VimからGitを使うためのプラグイン。
NeoBundle 'gregsexton/gitv.git'    " git log代わりに使ってます。
NeoBundle 'int3/vim-extradite.git' " Gitで管理されているファイルの差分を素早く見ることができます。

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
NeoBundle 'rhysd/textobj-wiw.git'         " ワード間をtextobj化。カーソル移動にも使えます。
"NeoBundle 'vimtaka/vim-textobj-sigil.git'   " perlの変数とかをtextobj化。

"------------------------------------------------------------
"【operator】
NeoBundle 'kana/vim-operator-user.git'     " 本体。
NeoBundle 'kana/vim-operator-replace.git'  " レジスタの内容で選択範囲を置換できます。
NeoBundle 'tyru/operator-camelize.vim.git' " 選択範囲をCamelCaseにしたりsnake_caseにしたりできます。
NeoBundle 'tyru/operator-reverse.vim.git'  " 選択した行や範囲を逆にできます。



NeoBundle 'vim-scripts/DoxygenToolkit.vim.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'h1mesuke/vim-alignta.git'
NeoBundle 'pix/vim-align.git'
NeoBundle 'vim-scripts/Align.git'

NeoBundle 'vim-scripts/MultipleSearch.git'
NeoBundle 'vim-scripts/YankRing.vim.git'
NeoBundle 'tanabe/ToggleCase-vim.git'
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'thinca/vim-vcs.git'
NeoBundle 'hrp/EnhancedCommentify.git'
NeoBundle 'vim-scripts/gtags.vim.git'
NeoBundle 'kana/vim-altr'
NeoBundle 'mattn/excitetranslate-vim.git' "翻訳
NeoBundle 'supermomonga/projectlocal.vim'
NeoBundle 'deris/vim-rengbang.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"【python】 
NeoBundle 'bps/vim-textobj-python.git'
NeoBundle 'andviro/flake8-vim.git'
NeoBundle 'hachibeeDI/vim-operator-autopep8.git'
NeoBundle 'nathanaelkane/vim-indent-guides.git'


NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mattn/mkdpreview-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'fuenor/qfixhowm.git'
NeoBundle 'fuenor/JpFormat.vim.git'
"NeoBundle 'yuratomo/w3m.vim.git'
"NeoBundle 'mattn/learn-vimscript.git'
NeoBundle 'kannokanno/previm.git'


NeoBundle 'godlygeek/tabular.git'
NeoBundle 'dhruvasagar/vim-table-mode.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax
NeoBundle 'https://github.com/vim-ruby/vim-ruby.git'
NeoBundle 'https://github.com/moqada/autoit.vim--Breland.git'
NeoBundle 'https://github.com/tpope/vim-cucumber.git'
"NeoBundle 'https://github.com/tpope/vim-markdown.git'
"NeoBundle 'https://github.com/plasticboy/vim-markdown.git'
"NeoBundle 'https://github.com/rcmdnk/vim-markdown.git'

"NeoBundle 'https://github.com/klen/python-mode.git'
NeoBundle 'https://github.com/aohta/blockdiag.vim.git'
NeoBundle 'https://github.com/aklt/plantuml-syntax.git'
"NeoBundle 'https://github.com/vim-scripts/autohotkey-ahk.git'
"NeoBundle 'https://github.com/vim-scripts/scilab.vim.git'
"NeoBundle 'https://github.com/vim-scripts/csv.vim.git'
"NeoBundle 'https://github.com/chrisbra/csv.vim.git'

NeoBundle 'https://github.com/bling/vim-airline.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
NeoBundle 'https://github.com/vim-scripts/bluegreen.git'
NeoBundle 'https://github.com/w0ng/vim-hybrid.git'
NeoBundle 'https://github.com/nanotech/jellybeans.vim.git'
NeoBundle 'https://github.com/tomasr/molokai'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck




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
  autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType python setlocal autoindent smartindent expandtab
  autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd BufRead,BufNewFile *.mu  set filetype=c
  autocmd BufRead,BufNewFile *.dat set filetype=c
  autocmd BufRead,BufNewFile *.ngc setfiletype ngc
  autocmd BufRead,BufNewFile *.ncp setfiletype ngc
  autocmd BufRead,BufNewFile *.csv  set filetype=text
augroup END


"=============================================================================
" Tab機能設定
"=============================================================================
"set showtabline=2               " File tabs allways visible
nmap <C-tab> :tabnext<CR>
map  <C-tab> :tabnext<CR>
imap <C-tab> <ESC>:tabnext<CR>i

"=============================================================================
"QuickFix Gtags
"=============================================================================
map <S-F6> :colder<CR>
map <S-F7> :cnewer<CR>
map <F6> :cn<CR>
map <F7> :cp<CR>

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
"Grep 
"=============================================================================
" Hack #129: 複数のファイルから検索する では:grepについて紹介しました。 
" 色々と便利なコマンドなのですが、頻繁に使っていると次のような
" 不満が出てきます:
" :grepの引数は基本的に
" :grep {pattern} {file} ...
" 
" なのですが、同じファイル郡に対して異なるパターンで:grepする 
" というケースは少なくありません。例えば
" :grep rebase *.[ch]
" 
" で検索した後で
" :grep rebase_cmd *.[ch]
" 
" と検索しなおすとしましょう。全てのコマンドを入力しなおすと面倒ですから、 
" 通常は入力履歴を<Up>/<Down>で参照して以前入力した コマンドを修正する形になります。
" ここで、入力履歴を手繰るまではよいのですが、 パターンを修正するところが問題です。 
" 修正するためには<Left><Left><Left>...などとしてパターンの箇所まで 
" カーソルを移動しなければならないのですが、これが面倒です。 
" 特に{file} ...の指定が長くなると面倒さが倍増します。 
" どうにかして簡単に修正することはできないでしょうか。
"
" 解決方法
" 以下の内容をvimrcに追加します:

command! -complete=file -nargs=+ MGrep call s:grep([<f-args>]) 
	
function! s:grep(args) 
  execute 'vimgrep' '/'.a:args[-1].'/' join(a:args[:-2]) 
endfunction 


""=============================================================================
""QFixHowm
""=============================================================================
""キーマップリーダー
let QFixHowm_Key       = 'g'
let QFixHowm_FileType  = 'markdown'
let QFixHowm_Title     = '#'
"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir           = 'd:/user/memo'
let mygrepprg          = 'internal'
let howm_filename      = '%Y/%m/%Y-%m-%d-%H%M%S.mkd'
"let howm_fileencoding = 'cp932'
"let howm_fileformat   = 'dos'
let QFixHowm_RecentMode = 2
let QFixHowm_SaveTime = -1


"<F6>  文頭にタイムスタンプを挿入してinsertモードへ移行
nmap <F5> <ESC>i----------------------<CR><C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR><CR><Up><Up>

"<leader>Wで現在のファイルをFirefoxで開く
"noremap <Leader>W :silent ! start firefox %<CR> 
nmap gw <Plug>(openbrowser-open)

augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

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
      \       "outputter" : "multi:buffer:quickfix",
      \       "hook/shabadoubi_touch_henshin/enable" : 1,
      \       "hook/shabadoubi_touch_henshin/wait" : 20,
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

map ,p <Plug>(operator-autopep8)

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
let g:unite_source_file_mru_limit = 50
 
"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

let g:unite_update_time = 1000 

nnoremap <silent> [unite]v :<C-u>VimFiler<CR>
"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
"nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]f :<C-u>Unite file_rec<CR>
"バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"レジスタ一覧
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
" grep検索
nnoremap <silent> [unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
"カーソル位置の単語をgrep検索
nnoremap <silent> [unite]cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
"grep検索結果の再呼出
nnoremap <silent> [unite]r  :<C-u>UniteResume search-buffer<CR>

if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
endif
"
let g:unite_converter_file_directory_width =70
call unite#custom_filters('file_mru',
      \ ['matcher_file_name', 'sorter_default', 'converter_file_directory'])

call unite#custom_filters('buffer',
      \ ['matcher_file_name', 'sorter_default', 'converter_file_directory'])

"===================================================================
" vim-altr
"===================================================================
nnoremap <Leader>a <Plug>(altr-forward)
"===================================================================
" VimShell
"===================================================================
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"===================================================================
" giti
"===================================================================
nmap <Space>gd <SID>(git-diff-cached)
nmap <Space>gD <SID>(git-diff)
nmap <Space>gf <SID>(git-fetch-now)
nmap <Space>gF <SID>(git-fetch)
nmap <Space>gp <SID>(git-push-now)
nmap <Space>gP <SID>(git-pull-now)
nmap <Space>gl <SID>(git-log-line)
nmap <Space>gL <SID>(git-log)

" unite prefix key
" nnoremap [unite] <Nop>
" nmap <Leader>. [unite]

nmap [unite]gg    <SID>(giti-sources)
nmap [unite]gst   <SID>(git-status)
nmap [unite]gb    <SID>(git-branch)
nmap [unite]gB    <SID>(git-branch_all)
nmap [unite]gc    <SID>(git-config)
nmap [unite]gl    <SID>(git-log)
nmap [unite]gL    <SID>(git-log-this-file)

" giti {{{
if globpath(&rtp, 'plugin/giti.vim') != ''
  let g:giti_log_default_line_count = 100
  nnoremap <expr><silent> <SID>(git-diff)        ':<C-u>GitiDiff ' . expand('%:p') . '<CR>'
  nnoremap <expr><silent> <SID>(git-diff-cached) ':<C-u>GitiDiffCached ' . expand('%:p') .  '<CR>'
  nnoremap       <silent> <SID>(git-fetch-now)    :<C-u>GitiFetch<CR>
  nnoremap       <silent> <SID>(git-fetch)        :<C-u>GitiFetch 
  nnoremap <expr><silent> <SID>(git-push-now)    ':<C-u>GitiPushWithSettingUpstream origin ' . giti#branch#current_name() . '<CR>'
  nnoremap       <silent> <SID>(git-push)         :<C-u>GitiPush 
  nnoremap       <silent> <SID>(git-pull-now)     :<C-u>GitiPull<CR>
  nnoremap       <silent> <SID>(git-pull)         :<C-u>GitiPull 
  nnoremap       <silent> <SID>(git-log-line)     :<C-u>GitiLogLine ' . expand('%:p') . '<CR>'
  nnoremap       <silent> <SID>(git-log)          :<C-u>GitiLog ' . expand('%:p') . '<CR>'

  nnoremap <silent> <SID>(giti-sources)   :<C-u>Unite giti<CR>
  nnoremap <silent> <SID>(git-status)     :<C-u>Unite giti/status<CR>
  nnoremap <silent> <SID>(git-branch)     :<C-u>Unite giti/branch<CR>
  nnoremap <silent> <SID>(git-branch_all) :<C-u>Unite giti/branch_all<CR>
  nnoremap <silent> <SID>(git-config)     :<C-u>Unite giti/config<CR>
  nnoremap <silent> <SID>(git-log)        :<C-u>Unite giti/log<CR>

  nnoremap <silent><expr> <SID>(git-log-this-file) ':<C-u>Unite giti/log:' . expand('%:p') . '<CR>'
endif
" }}}

"===================================================================
" markdown セッティング
" forked from http://qiita.com/naoty_k/items/56eddc9b76fe630f9be7

" todoリストを簡単に入力する
abbreviate tl - [ ]

" 入れ子のリストを折りたたむ
setlocal foldmethod=expr foldexpr=MkdCheckboxFold(v:lnum) foldtext=MkdCheckboxFoldText()
function! MkdCheckboxFold(lnum)
    let line = getline(a:lnum)
    let next = getline(a:lnum + 1)
    if MkdIsNoIndentCheckboxLine(line) && MkdHasIndentLine(next)
        return 1
    elseif (MkdIsNoIndentCheckboxLine(next) || next =~ '^$') && !MkdHasIndentLine(next)
        return '<1'
    endif
    return '='
endfunction
function! MkdIsNoIndentCheckboxLine(line)
    return a:line =~ '^- \[[ x]\] '
endfunction
function! MkdHasIndentLine(line)
    return a:line =~ '^[[:blank:]]\+'
endfunction
function! MkdCheckboxFoldText()
    return getline(v:foldstart) . ' (' . (v:foldend - v:foldstart) . ' lines) '
endfunction

" todoリストのon/offを切り替える
"nnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>
"vnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>

nnoremap <Leader><Leader> :call ToggleCheckbox()<CR>
vnoremap <Leader><Leader> :call ToggleCheckbox()<CR>

" 選択行のチェックボックスを切り替える
function! ToggleCheckbox()
  let l:line = getline('.')
  if l:line =~ '\-\s\[\s\]'
    " 完了時刻を挿入する
    let l:result = substitute(l:line, '-\s\[\s\]', '- [x]', '') . ' [' . strftime("%Y/%m/%d (%a) %H:%M") . ']'
    call setline('.', l:result)
  elseif l:line =~ '\-\s\[x\]'
    let l:result = substitute(substitute(l:line, '-\s\[x\]', '- [ ]', ''), '\s\[\d\{4}.\+]$', '', '')
    call setline('.', l:result)
  end
endfunction

syn match MkdCheckboxMark /-\s\[x\]\s.\+/ display containedin=ALL
hi MkdCheckboxMark ctermfg=green
syn match MkdCheckboxUnmark /-\s\[\s\]\s.\+/ display containedin=ALL
hi MkdCheckboxUnmark ctermfg=red

