" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)

if has('win32') || has('win64')
  " Windows�p
  "=============================================================================
  " �t�H���g�ݒ�:
  "=============================================================================
  set guifont=MS_Gothic:h9:cSHIFTJIS
  set printfont=MS_Gothic:h9:cSHIFTJIS
  set linespace=1

  "=============================================================================
  " IME�ݒ�
  "=============================================================================
  "�}�����[�h�I������IME��Ԃ�ۑ����Ȃ�
  inoremap <silent> <ESC> <ESC>
  inoremap <silent> <C-[> <ESC>

  "IME���[�h�Œ�
  inoremap <silent> <C-j> <C-^>

  "f�R�}���h���ł�IME��OFF�ɂ���
  let g:IMState = 0
  augroup InsertHookIME
    autocmd!
    autocmd InsertEnter * let &iminsert = g:IMState
    autocmd InsertLeave * let g:IMState = &iminsert|set iminsert=0 imsearch=0
  augroup END

endif


"���j���[�\�����폜�������ꍇ�́A���̍s��ǉ�����B
"set guioptions-=m 

"�c�[���o�[�\�����폜����ɂ͎��̍s��ǉ�����B
set guioptions-=T 

"---------------------------------------------------------------------------
" �E�C���h�E�Ɋւ���ݒ�:
"
" �E�C���h�E�̕�
set columns=120

" �E�C���h�E�̍���
set lines=55

" �R�}���h���C���̍���(GUI�g�p��)
set cmdheight=2

" ��ʂ����n�ɔ��ɂ��� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
"set background=dark
"colorscheme jellybeans
"colorscheme molokai
"colorscheme hybrid
colorscheme onedark
"colorscheme louver

"let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

"=============================================================================
" �J�����g�s�n�C���C�gON
"=============================================================================
set cursorline
"" �A���_�[���C��������(color terminal)
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"" �A���_�[���C��������(gui)
"highlight CursorLine gui=underline guibg=white guifg=black
highlight CursorLine gui=underline guifg=NONE guibg=NONE

"----------------------------------------------------------------------------
"80���ڂɈ��t����
"set colorcolumn=80
"execute "set colorcolumn=" . join(range(81, 9999), ',')

"----------------------------------------------------------------------------
"�S�p�X�y�[�X�̃n�C���C�g
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /�@/

function! DispProjectorDark()
  set guifont=MS_Gothic:h12:cSHIFTJIS
  set background=dark
  colorscheme hybrid 
endfunction

function! DispProjectorLight()
  set guifont=MS_Gothic:h12:cSHIFTJIS
  set background=light
  colorscheme louver
endfunction

function! DispNormal()
  set guifont=MS_Gothic:h9:cSHIFTJIS
  set background=dark
  colorscheme onedark

  " �E�C���h�E�̕�
  set columns=120

  " �E�C���h�E�̍���
  set lines=55

  " �R�}���h���C���̍���(GUI�g�p��)
  set cmdheight=2

endfunction
