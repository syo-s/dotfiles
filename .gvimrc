" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)


if has('win32') || has('win64')
  " Windows用
  "=============================================================================
  " フォント設定:
  "=============================================================================
  "set guifont=MS_Gothic:h9:cSHIFTJIS
  set guifont=Myrica_M:h10:cSHIFTJIS
  set printfont=MS_Gothic:h9:cSHIFTJIS
  set linespace=1

  :
  "=============================================================================
  " IME設定
  "=============================================================================
  "挿入モード終了時にIME状態を保存しない
  inoremap <silent> <ESC> <ESC>
  inoremap <silent> <C-[> <ESC>

  "IMEモード固定
  inoremap <silent> <C-j> <C-^>

  "fコマンド等でのIMEをOFFにする
  let g:IMState = 0
  augroup InsertHookIME
    autocmd!
    autocmd InsertEnter * let &iminsert = g:IMState
    autocmd InsertLeave * let g:IMState = &iminsert|set iminsert=0 imsearch=0
  augroup END

endif


"メニュー表示を削除したい場合は、次の行を追加する。
"set guioptions-=m 

"ツールバー表示を削除するには次の行を追加する。
set guioptions-=T 

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=120

" ウインドウの高さ
set lines=55

" コマンドラインの高さ(GUI使用時)
set cmdheight=2

" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
set background=dark
"colorscheme jellybeans
"colorscheme molokai
"colorscheme hybrid
"colorscheme onedark
"colorscheme louver
colorscheme iceberg

"let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

"=============================================================================
" カレント行ハイライトON
"=============================================================================
set cursorline
"" アンダーラインを引く(color terminal)
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"" アンダーラインを引く(gui)
"highlight CursorLine gui=underline guibg=white guifg=black
highlight CursorLine gui=underline guifg=NONE guibg=NONE

"----------------------------------------------------------------------------
"80桁目に印を付ける
set colorcolumn=80
"execute "set colorcolumn=" . join(range(81, 9999), ',')

"----------------------------------------------------------------------------
"statusline
nnoremap <F3> :echo cfi#format("%s", "")<CR>
"let &statusline .= ' [%{cfi#format("%s", "")}]'
"let g:lightline.component_function.cfi = 'StlCurrentFuncInfo'
"function! StlCurrentFuncInfo()
"  if exists('*cfi#format')
"    return cfi#format('%.43s()', '')
"  end
"  return ''
"endfunction
"
"let g:lightline.active.right = [['lineinfo'], ['percent'],
"  \ ['fileformat', 'fileencoding'], ['cfi']]

"----------------------------------------------------------------------------
"全角スペースのハイライト
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

function! DispProjectorDark()
  set guifont=Myrica_M:h12:cSHIFTJIS
  set background=dark
  colorscheme iceberg
endfunction

function! DispProjectorLight()
  set guifont=Myrica_M:h12:cSHIFTJIS
  set background=light
  colorscheme shirotelin
endfunction

function! DispNormal()
  set guifont=Myrica_M:h10:cSHIFTJIS
  set background=dark
  colorscheme iceberg

  " ウインドウの幅
  set columns=120

  " ウインドウの高さ
  set lines=55

  " コマンドラインの高さ(GUI使用時)
  set cmdheight=1

endfunction
