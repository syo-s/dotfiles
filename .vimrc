" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

"=============================================================================
" _vimrcの編集
" <F4>はクリップボードにコピー
"=============================================================================
nnoremap <F4> :let @* = expand('%:t')<CR> 
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
"let g:neocomplete#data_directory    = expand(g:cache_home.'/etc/neocomplete')
"let g:vimfiler_data_directory       = expand(g:cache_home.'/etc/vimfiler')
"let g:vimshell_temporary_directory  = expand(g:cache_home.'/etc/VimShell')
"let g:unite_data_directory          = expand(g:cache_home.'/etc/unite')
"let g:neomru#file_mru_path          = expand(g:cache_home.'/etc/neomru/file')
"let g:neomru#directory_mru_path     = expand(g:cache_home.'/etc/neomru/direcroty')
"let g:ref_cache_dir                 = expand(g:cache_home.'/etc/vim_ref_cache')
let g:yankround_dir                 = expand(g:cache_home.'/etc/yankround')

"=============================================================================
" Plugin
"=============================================================================
"source $HOME/.vimrc_neobundle
"source $HOME/.vimrc_dein
source $HOME/.vimrc_minpac
"source $HOME/.vimrc_vim_plug

filetype plugin indent on

set runtimepath+=$VIM
"set runtimepath+=$HOME/_vim
"set pythonthreedll=$VIM/python3/python35.dll

"=============================================================================
" オプション
"=============================================================================
let $TEMPDIR = $TEMP
let $PATH  = $VIM. ';'
  \ . $PATH
  \ . $HOME .'\..\app\bin;'
  \ . 'C:\Scoop\apps\msys2\current\usr\bin;'
  \ . 'C:\Scoop\apps\msys2\current\mingw64\bin;'
  \ . 'C:\windows\System32\;'

let $MSYSTEM='MINGW32'
let $MSYSCON='mintty.exe'

source $VIMRUNTIME/defaults.vim

"set wildmenu
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

if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set browsedir=buffer			  "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set clipboard=unnamed			  "クリップボードをWindowsと連携 (半角/全角変換が使用できなくなるので削除)
set helplang=jp				  "日本語help
set virtualedit& virtualedit+=block       "矩形選択で自由に移動

" Vimの補完(Ctrl-P/N)でインクルードされているファイルをスキャンしないようにするCommentsAdd Star
set complete=.,w,b,u,t

set nocompatible 
set fileencodings=ucs-bom,utf8,cp932,sjis,latin1
set termencoding=cp932
"set makeencoding=char  " システムロケールが使用される
"set makeencoding=cp932 
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
  autocmd FileType xml  setlocal shiftwidth=2 tabstop=2 softtabstop=2
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

let mapleader = ","
"=============================================================================
" fzf
"=============================================================================
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = []
"let g:fzf_history_dir = '~/fzf-history'

if has('win32') || has('win64')
  command! -bang -nargs=* FzfRg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case "'.<q-args>.'"', 1,
    \   <bang>0)
endif


" Simple MRU search
command! FzfMru call fzf#run({
      \  'source':  v:oldfiles,
      \  'sink':    'e',
      \  'options': '-m -x +s',
      \  'down':    '40%'})

" Filtered v:oldfiles and open buffers
"command! FzfMru call fzf#run({
"      \ 'source':  reverse(s:all_files()),
"      \ 'sink':    'edit',
"      \ 'options': '-m -x +s',
"      \ 'down':    '40%' })
"
"function! s:all_files()
"  return extend(
"        \ filter(copy(v:oldfiles),
"        \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
"        \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
"endfunction

noremap <silent> <Leader>ff :<C-u>FzfFiles<CR>
"noremap <silent> <Leader>fh :<C-u>FzfHistory<CR>
noremap <silent> <Leader>fh :<C-u>FzfMru<CR>
noremap <silent> <Leader>fb :<C-u>FzfBuffers<CR>
noremap          <Leader>fg :<C-u>FzfRg


"=============================================================================
"set foldtext=FoldCCtext()
"set foldcolumn=5
"set fillchars=vert:\|
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
" autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)


"=============================================================================
" syntax  highligh 「key word」
"=============================================================================
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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_c_compiler = 'clang'
"let g:syntastic_cpp_compiler = 'clang'

"command Prettify :%s/></>\r</g | filetype indent on | setf xml | normal gg=G

"=============================================================================
" vim-table-mode
"=============================================================================
"let g:table_mode_corner = '|'


"=============================================================================
"<F9>  文頭にタイムスタンプを挿入してinsertモードへ移行
"=============================================================================
"nmap <F8> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) _") <CR><CR>----------------------<CR>00:00-00:00<CR>00:00-00:00<CR><Up><Up>


"=============================================================================
" vim-operator-surround 
"=============================================================================
" operator mappings
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)

" delete or replace most inner surround

" if you use vim-textobj-multiblock
nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-multiblock-a)
nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)

" if you use vim-textobj-anyblock
nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)

" if you use vim-textobj-between
nmap <silent>sdb <Plug>(operator-surround-delete)<Plug>(textobj-between-a)
nmap <silent>srb <Plug>(operator-surround-replace)<Plug>(textobj-between-a)

"=============================================================================
" operator-camelize (name change)
"=============================================================================
map <Leader>ca <plug>(operator-camelize-toggle)
"map <leader>c <plug>(operator-camelize)
"map <leader>C <plug>(operator-decamelize)


"===================================================================
" caw コメントアウト comment の「c」
"===================================================================
nmap <Leader>co <Plug>(caw:i:toggle)
vmap <Leader>co <Plug>(caw:i:toggle)


"===================================================================
" vim-over 置換
"===================================================================
"" over.vimの起動
"nnoremap <silent> <Leader>m :OverCommandLine<CR>
"
"" カーソル下の単語をハイライト付きで置換
"nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
"
"" コピーした文字列をハイライト付きで置換
"nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>


"===================================================================
" yankroud 
"===================================================================
"nmap p <Plug>(yankround-p)
"xmap p <Plug>(yankround-p)
"nmap P <Plug>(yankround-P)
"nmap gp <Plug>(yankround-gp)
"xmap gp <Plug>(yankround-gp)
"nmap gP <Plug>(yankround-gP)
"nmap <C-p> <Plug>(yankround-prev)
"nmap <C-n> <Plug>(yankround-next)


"===================================================================
" kaoriya cmdex.vimから、
"===================================================================
" :CdCurrent
"   Change current directory to current file's one.
command! -nargs=0 LcdCurrent lcd %:p:h


"===================================================================
" PreVimOpen
"===================================================================
"let g:previm_open_cmd = 'open -a Google\ Chrome'
"let g:previm_open_cmd = 'open -a microsoft-edge:'

"===================================================================
" 誤操作防止
"  keymap
"===================================================================
nnoremap ,u <Nop>
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

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
