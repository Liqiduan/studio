set pythonthreedll=python37.dll

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'jiangmiao/auto-pairs'
"Plug 'SirVer/ultisnips'  
"Plug 'honza/vim-snippets'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-diff'
Plug 'gilligan/textobj-gitgutter'
Plug 'sgur/vim-textobj-parameter'
Plug 'paulhybryant/vim-textobj-path'
Plug 'Julian/vim-textobj-variable-segment'

Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'tpope/vim-unimpaired'
Plug 'Yggdroot/LeaderF'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-markdown'
call plug#end()

set completeopt=menu,preview

set bg=light
set guifont=Source_Code_Pro:h14:cANSI:qDRAFT
set guioptions=F
colorscheme PaperColor
syntax on

set updatetime=100
set signcolumn=yes
set columns=80
set ignorecase
set nu
set ts=4
set shiftwidth=4
set expandtab

let mapleader=' '

nnoremap <leader>g :G<CR>
nnoremap <leader>p :Leaderf self<CR>
nnoremap <leader>t :tabnew<CR>

" airline config
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#fugitiveline#enabled = 1

" coc config
autocmd cursorHold * call CocAction("diagnosticInfo")
inoremap <silent><expr> <CR>
            \ pumvisible() ? coc#_select_confirm() :
            \ "\<CR>"
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <silent><expr> <ESC>
            \ pumvisible() ? coc#_cancel() :
            \ "\<ESC>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
