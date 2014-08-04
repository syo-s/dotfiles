" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)

"=============================================================================
" _vimrc�̕ҏW
"=============================================================================
nnoremap <F2> :<C-u>edit$MYVIMRC<CR>
nnoremap <F3> :<C-u>edit$MYGVIMRC<CR>
nnoremap <F4> :<C-u>source$MYVIMRC<CR>:source$MYGVIMRC<CR>


"=============================================================================
" �I�v�V����
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
set noignorecase			  "�������̑啶��,����������ʂ���
set cindent
set nowrap
set number				  " �s�ԍ����\�� (number:�\��)
set grepprg=internal			  "
"set grepprg=pt\ --nocolor\ --nogroup
"set noundofile
set backupdir=$HOME/.vimbackup		  "�o�b�N�A�b�v�t�@�C�������f�B���N�g��
set directory=$HOME/.vimbackup		  "�X���b�v�t�@�C���p�̃f�B���N�g��
set undodir=$HOME/.vimbackup              "undofile�p�̃f�B���N�g��
set browsedir=buffer			  "�t�@�C���ۑ��_�C�A���O�̏����f�B���N�g�����o�b�t�@�t�@�C���ʒu�ɐݒ�
"set clipboard=unnamed			  "�N���b�v�{�[�h��Windows�ƘA�g (���p/�S�p�ϊ����g�p�ł��Ȃ��Ȃ�̂ō폜)
"set list				  "�^�u�����A�s���ȂǕs��������\������
"set listchars=eol:$,tab:>\ ,extends:<	  "list�ŕ\������镶���̃t�H�[�}�b�g���w�肷��
set helplang=jp				  "���{��help
set virtualedit& virtualedit+=block			  "��`�I���Ŏ��R�Ɉړ�
"set makeprg=./make.bat
"set errorformat=\"%f\"\\,%*[^0-9]%l:\ %m "��ʓI��C�R���p�C���p
"


" shellslash�̐ݒ�
" shellslash�͏���Ȃ��B�i�Z�p���[�^��\���ƕs�ցB�j
" shellslash���ݒ肳��Ă���ƁAquickrun����肭�����Ȃ��B
" vimproc���g���Ή����ł���݂����B������...
"
" set shellslash  "Windows�Ńf�B���N�g���p�X�̋�؂蕶���\���� / ���g����悤�ɂ���
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
" �yunite�z
NeoBundle 'Shougo/unite.vim.git'       " �{��
NeoBundle 'Shougo/unite-build.git'     " make build�p
NeoBundle 'Shougo/neomru.vim'          " �t�@�C������

NeoBundle 'Shougo/vimshell.git'        " shell
NeoBundle 'Shougo/vimfiler.git'        " filer
NeoBundle 'Shougo/neocomplete.vim.git' " �ۊ�
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
" �y�o�[�W�����Ǘ��z
NeoBundle 'tpope/vim-fugitive.git' " Vim����Git���g�����߂̃v���O�C���B
NeoBundle 'gregsexton/gitv.git'    " git log����Ɏg���Ă܂��B
NeoBundle 'int3/vim-extradite.git' " Git�ŊǗ�����Ă���t�@�C���̍�����f�������邱�Ƃ��ł��܂��B

"------------------------------------------------------------
" �ytext-obj�z
NeoBundle 'kana/vim-textobj-user.git'    " �{�́B
NeoBundle 'kana/vim-textobj-indent.git'  " �C���f���g��textobj���B
NeoBundle 'kana/vim-textobj-syntax.git'  " �V���^�b�N�X�Œ�`���ꂽ������textobj���B
NeoBundle 'kana/vim-textobj-line.git'    " �s��textobj���B
NeoBundle 'kana/vim-textobj-fold.git'    " �܂��݂�textobj���B
NeoBundle 'kana/vim-textobj-entire.git'  " �o�b�t�@�S�̂�textobj���B
NeoBundle 'thinca/vim-textobj-between.git' " �C�ӂ̋�؂蕶���̊Ԃ�textobj���B
NeoBundle 'thinca/vim-textobj-comment.git' " �R�����g��textobj���B
NeoBundle 'rhysd/textobj-wiw.git'         " ���[�h�Ԃ�textobj���B�J�[�\���ړ��ɂ��g���܂��B
"NeoBundle 'vimtaka/vim-textobj-sigil.git'   " perl�̕ϐ��Ƃ���textobj���B

"------------------------------------------------------------
"�yoperator�z
NeoBundle 'kana/vim-operator-user.git'     " �{�́B
NeoBundle 'kana/vim-operator-replace.git'  " ���W�X�^�̓��e�őI��͈͂�u���ł��܂��B
NeoBundle 'tyru/operator-camelize.vim.git' " �I��͈͂�CamelCase�ɂ�����snake_case�ɂ�����ł��܂��B
NeoBundle 'tyru/operator-reverse.vim.git'  " �I�������s��͈͂��t�ɂł��܂��B



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
NeoBundle 'mattn/excitetranslate-vim.git' "�|��
NeoBundle 'supermomonga/projectlocal.vim'
NeoBundle 'deris/vim-rengbang.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�ypython�z 
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
" �t�@�C���̊֘A�t�� 
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
" Tab�@�\�ݒ�
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
" Hack #129: �����̃t�@�C�����猟������ �ł�:grep�ɂ��ďЉ�܂����B 
" �F�X�ƕ֗��ȃR�}���h�Ȃ̂ł����A�p�ɂɎg���Ă���Ǝ��̂悤��
" �s�����o�Ă��܂�:
" :grep�̈����͊�{�I��
" :grep {pattern} {file} ...
" 
" �Ȃ̂ł����A�����t�@�C���S�ɑ΂��ĈقȂ�p�^�[����:grep���� 
" �Ƃ����P�[�X�͏��Ȃ�����܂���B�Ⴆ��
" :grep rebase *.[ch]
" 
" �Ō����������
" :grep rebase_cmd *.[ch]
" 
" �ƌ������Ȃ����Ƃ��܂��傤�B�S�ẴR�}���h����͂��Ȃ����Ɩʓ|�ł�����A 
" �ʏ�͓��͗�����<Up>/<Down>�ŎQ�Ƃ��ĈȑO���͂��� �R�}���h���C������`�ɂȂ�܂��B
" �����ŁA���͗�������J��܂ł͂悢�̂ł����A �p�^�[�����C������Ƃ��낪���ł��B 
" �C�����邽�߂ɂ�<Left><Left><Left>...�ȂǂƂ��ăp�^�[���̉ӏ��܂� 
" �J�[�\�����ړ����Ȃ���΂Ȃ�Ȃ��̂ł����A���ꂪ�ʓ|�ł��B 
" ����{file} ...�̎w�肪�����Ȃ�Ɩʓ|�����{�����܂��B 
" �ǂ��ɂ����ĊȒP�ɏC�����邱�Ƃ͂ł��Ȃ��ł��傤���B
"
" �������@
" �ȉ��̓��e��vimrc�ɒǉ����܂�:

command! -complete=file -nargs=+ MGrep call s:grep([<f-args>]) 
	
function! s:grep(args) 
  execute 'vimgrep' '/'.a:args[-1].'/' join(a:args[:-2]) 
endfunction 


""=============================================================================
""QFixHowm
""=============================================================================
""�L�[�}�b�v���[�_�[
let QFixHowm_Key       = 'g'
let QFixHowm_FileType  = 'markdown'
let QFixHowm_Title     = '#'
"howm_dir�̓t�@�C����ۑ��������f�B���N�g����ݒ�B
let howm_dir           = 'd:/user/memo'
let mygrepprg          = 'internal'
let howm_filename      = '%Y/%m/%Y-%m-%d-%H%M%S.mkd'
"let howm_fileencoding = 'cp932'
"let howm_fileformat   = 'dos'
let QFixHowm_RecentMode = 2
let QFixHowm_SaveTime = -1


"<F6>  �����Ƀ^�C���X�^���v��}������insert���[�h�ֈڍs
nmap <F5> <ESC>i----------------------<CR><C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR><CR><Up><Up>

"<leader>W�Ō��݂̃t�@�C����Firefox�ŊJ��
"noremap <Leader>W :silent ! start firefox %<CR> 
nmap gw <Plug>(openbrowser-open)

augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

""=============================================================================
""quickrun.vim
""=============================================================================
" runner/vimproc/updatetime �ŏo�̓o�b�t�@�̍X�V�Ԋu���~���b�Őݒ�ł��܂�
" updatetime ���ꎞ�I�ɏ����������Ă��܂��̂Œ��ӂ��ĉ�����
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
   
""vimfiler���f�t�H���g�̃t�@�C���}�l�[�W���[�ɐݒ肷��
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

"unite general settings
"�C���T�[�g���[�h�ŊJ�n
"let g:unite_enable_start_insert = 1

"�ŋߊJ�����t�@�C�������̕ۑ���
let g:unite_source_file_mru_limit = 50
 
"file_mru�̕\���t�H�[�}�b�g���w��B��ɂ���ƕ\���X�s�[�h�������������
let g:unite_source_file_mru_filename_format = ''

let g:unite_update_time = 1000 

nnoremap <silent> [unite]v :<C-u>VimFiler<CR>
"���݊J���Ă���t�@�C���̃f�B���N�g�����̃t�@�C���ꗗ�B
"�J���Ă��Ȃ��ꍇ�̓J�����g�f�B���N�g��
"nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]f :<C-u>Unite file_rec<CR>
"�o�b�t�@�ꗗ
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"���W�X�^�ꗗ
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"�ŋߎg�p�����t�@�C���ꗗ
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"�u�b�N�}�[�N�ꗗ
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"�u�b�N�}�[�N�ɒǉ�
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
" grep����
nnoremap <silent> [unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
"�J�[�\���ʒu�̒P���grep����
nnoremap <silent> [unite]cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
"grep�������ʂ̍Čďo
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
" markdown �Z�b�e�B���O
" forked from http://qiita.com/naoty_k/items/56eddc9b76fe630f9be7

" todo���X�g���ȒP�ɓ��͂���
abbreviate tl - [ ]

" ����q�̃��X�g��܂肽����
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

" todo���X�g��on/off��؂�ւ���
"nnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>
"vnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>

nnoremap <Leader><Leader> :call ToggleCheckbox()<CR>
vnoremap <Leader><Leader> :call ToggleCheckbox()<CR>

" �I���s�̃`�F�b�N�{�b�N�X��؂�ւ���
function! ToggleCheckbox()
  let l:line = getline('.')
  if l:line =~ '\-\s\[\s\]'
    " ����������}������
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

