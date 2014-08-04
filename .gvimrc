" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)
"---------------------------------------------------------------------------
" �t�H���g�ݒ�:
"
if has('win32')
  " Windows�p
  
  "set enc=utf-8
  "set rop=type:directx

  set guifont=�l�r_�S�V�b�N:h9:cSHIFTJIS
  "set guifont=Ricty_Diminished:h9:cSHIFTJIS
  " �s�Ԋu�̐ݒ�
  set linespace=1
endif


"---------------------------------------------------------------------------
" ����Ɋւ���ݒ�:
"
" ����:
" �����GUI�łȂ��Ă��ł���̂�vimrc�Őݒ肵���ق����ǂ���������Ȃ��B���̕�
" ���Windows�ł͂��Ȃ�B���B��ʓI�Ɉ���ɂ͖����A�ƌ����邱�Ƃ�����炵
" ���̂Ńf�t�H���g�t�H���g�͖����ɂ��Ă����B�S�V�b�N���g�������ꍇ�̓R�����g
" �A�E�g���Ă���printfont���Q�l�ɁB
"
" �Q�l:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" ����p�t�H���g
if has('printer')
  if has('win32')
    set printfont=�l�r_�S�V�b�N:h9:cSHIFTJIS
  endif
endif

"----------------------------------------------------------------------------
"�S�p�X�y�[�X�̃n�C���C�g
"highlight ZenkakuSpace guibg=white
"match ZenkakuSpace /�@/
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /�@/

"----------------------------------------------------------------------------
"Windows��gvim���{����͌Œ胂�[�h�ݒ� 
"
if has('win32') || has('win64')
  "�}�����[�h�I������IME��Ԃ�ۑ����Ȃ�
  inoremap <silent> <ESC> <ESC>
  inoremap <silent> <C-[> <ESC>

  "IME���[�h�Œ�
  inoremap <silent> <C-j> <C-^>
endif

if has('win32') || has('win64')
  "f�R�}���h���ł�IME��OFF�ɂ���
  let g:IMState = 0
  augroup InsertHookIME
    autocmd!
    autocmd InsertEnter * let &iminsert = g:IMState
    autocmd InsertLeave * let g:IMState = &iminsert|set iminsert=0 imsearch=0
  augroup END
endif


"���j���[�\�����폜�������ꍇ�́A���̍s��ǉ�����B
" set guioptions-=m 

"�c�[���o�[�\�����폜����ɂ͎��̍s��ǉ�����B
set guioptions-=T 

"---------------------------------------------------------------------------
" �E�C���h�E�Ɋւ���ݒ�:
"
" �E�C���h�E�̕�
set columns=150
" �E�C���h�E�̍���
set lines=60
" �R�}���h���C���̍���(GUI�g�p��)
set cmdheight=2
" ��ʂ����n�ɔ��ɂ��� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
"colorscheme evening
"colorscheme bluegreen
colorscheme hybrid
"colorscheme jellybeans

