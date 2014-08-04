" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)
"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  
  "set enc=utf-8
  "set rop=type:directx

  set guifont=ＭＳ_ゴシック:h9:cSHIFTJIS
  "set guifont=Ricty_Diminished:h9:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
endif


"---------------------------------------------------------------------------
" 印刷に関する設定:
"
" 注釈:
" 印刷はGUIでなくてもできるのでvimrcで設定したほうが良いかもしれない。この辺
" りはWindowsではかなり曖昧。一般的に印刷には明朝、と言われることがあるらし
" いのでデフォルトフォントは明朝にしておく。ゴシックを使いたい場合はコメント
" アウトしてあるprintfontを参考に。
"
" 参考:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" 印刷用フォント
if has('printer')
  if has('win32')
    set printfont=ＭＳ_ゴシック:h9:cSHIFTJIS
  endif
endif

"----------------------------------------------------------------------------
"全角スペースのハイライト
"highlight ZenkakuSpace guibg=white
"match ZenkakuSpace /　/
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

"----------------------------------------------------------------------------
"Windowsのgvim日本語入力固定モード設定 
"
if has('win32') || has('win64')
  "挿入モード終了時にIME状態を保存しない
  inoremap <silent> <ESC> <ESC>
  inoremap <silent> <C-[> <ESC>

  "IMEモード固定
  inoremap <silent> <C-j> <C-^>
endif

if has('win32') || has('win64')
  "fコマンド等でのIMEをOFFにする
  let g:IMState = 0
  augroup InsertHookIME
    autocmd!
    autocmd InsertEnter * let &iminsert = g:IMState
    autocmd InsertLeave * let g:IMState = &iminsert|set iminsert=0 imsearch=0
  augroup END
endif


"メニュー表示を削除したい場合は、次の行を追加する。
" set guioptions-=m 

"ツールバー表示を削除するには次の行を追加する。
set guioptions-=T 

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=150
" ウインドウの高さ
set lines=60
" コマンドラインの高さ(GUI使用時)
set cmdheight=2
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening
"colorscheme bluegreen
colorscheme hybrid
"colorscheme jellybeans

