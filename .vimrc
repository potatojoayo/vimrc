"map <Space>s :!lldb %< && ./%< <CR>
imap <C-n> <esc>yiwi<lt><esc>ea></><esc>hpF>i
let mapleader = " "
inoremap <C-l> <esc>la
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
map <C-t> :term<CR>
nnoremap da [{jV]}kd
nnoremap Y ggVGy
nnoremap <CR> a<CR><esc>
tnoremap <C-h> <C-\><C-n> :bprev<CR>
tnoremap <C-l> <C-\><C-n> :bnext<CR>
nnoremap <C-x> :bd<CR>
noremap <D-s> :w<CR>
nmap f bved
nmap gd <Plug>(coc-definition)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap d<Space> GVggd
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
imap kj <Esc>
nmap , :wq<CR>
nmap n :NERDTreeToggle<CR>

nnoremap <C-w> <C-w><C-w>
nnoremap <S-q> :q!<CR>
nnoremap <S-s> :w<CR>
autocmd FileType typescriptreact nnoremap <C-s> :w <CR> :!pm2 start npm -- start<CR>
autocmd FileType dart nnoremap <C-s> :w <CR> :CocCommand flutter.run<CR>
autocmd FileType cpp nnoremap <C-s> :w <CR> :!g++ -std=c++17 % -g -o %< && ./%< <CR>
autocmd FileType cpp nnoremap <F4> :w <CR> :!g++ -std=c++17 *.cpp -g -o %< && ./%< <CR>
autocmd FileType python nnoremap <C-s> :w <CR> :!python3 %<CR>
autocmd FileType rust nnoremap <C-s> :!cargo run<CR>
nmap X :VimspectorReset<CR>

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <C-e> <C-o>$

" Plugs
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'leafgarland/typescript-vim'
Plugin 'puremourning/vimspector'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'rust-lang/rust.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'morhetz/gruvbox'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
call vundle#end()

filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:python3_host_prog = '/usr/local/bin/python3.9'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:user_emmet_leader_key='<C-c>'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:termdebug_wide = 50
let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:C_SourceCodeExtentions = 'h cc cp cxx cpp CPP c++ C i ii'
let g:flutter_show_log_on_run = 1
let g:vimspector_enable_mappings = 'HUMAN'
"let g:loaded_syntastic_dart_dartanalyzer_checker = 0
set statusline+=%{GitStatus()}


" colorscheme
colorscheme gruvbox





" settings

set hidden
set laststatus=2 " 상태바 표시 항상
set runtimepath^=~/.vim/bundle/ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto indent's tab size
" 자동탭 사이즈를 4칸으로 하기
set shiftwidth=4

" 1 tab == 4 spaces
" 탭을 4칸으로 하기
set tabstop=4

" c style auto indent
" c언어 스타일로 indentation하기
set cindent

" #if has to be first on the line
" #if 문을 라인의 시작에 배치하기
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold functions by indent or syntax.
" open a folded function using 'zo'
" clase a function using 'zc'
" syntax에 따라 접어두기
" 접은 것을 열려면, zo를 누르기
" 연 것을 다시 접으려면, zc를 누르기
"set foldmethod=indent " 최대 깊이는 1개로 고정 set foldnestmax=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlight
" 언어 syntax에 하이라이트표시
syntax on


" Set utf8 as standard encoding
" utf8을 표준 인코딩으로 사용하기
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
" VIM에서 기억할 히스토리 라인수
set history=1000

" Set to auto read when a file is changed from the outside
" 현재 사용하고 있는 파일이 외부에서 수정된 경우 자동으로 읽기
set autoread

" Set to auto write on opening an other file.
" 다른 파일을 읽게 되는 경우 현재 파일을 자동으로 저장하기
" 현재 파일을 저장하지 않으면 ":e" 등으로 다른 파일을 열 수 없음.
set autowrite

" Use mouse or not
" 마우스로 클릭한 위치에 커서 놓기 " 마우스로 드래그한 영역은 비쥬얼 모드로 복사준비하기 " 단 마우스를 사용하면, 마우스 오른 버튼을 눌러 나오는 복사를 선택할 수 없음. " 마우스를 사용하지 않으려면, ":set mouse-=a"를 치기
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
" 오른편 하단에 현재 위치의 (행, 렬)을 표시
set ruler

" Highlight search results
" 검색결과에 하이라이트 표시하기
set hlsearch

" Makes search act like search in modern browsers
" 한글자 입력할때마다 매치되는 부분 표시하기
set incsearch

" Show matching brackets when text indicator is over them
" 현재 커서가 놓여진 괄호의 짝을 표시하기
set showmatch

" line number
" 라인넘버 표시하기
set number

set clipboard=unnamed " use OS clipboard


set backspace=indent,eol,start

