call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'vim-airline/vim-airline'
Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-rhubarb'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'

"Plug 'davidhalter/jedi-vim'
let g:ale_linters = {
\'javascript': ['eslint'],
\'typescript': ['eslint', 'tsserver', 'prettier'],
\'typescriptreact': ['eslint', 'tsserver', 'prettier'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'json': ['prettier', 'eslint', 'jq'],
\   'css': ['prettier'],
\}

let g:ale_hover_to_preview = 1
let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1


Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

" Markdown / blog post writing efficiency 
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"colorscheme monokai
"highlight Normal ctermbg=NONE

packadd! dracula_pro

syntax enable

let g:dracula_colorterm = 0
set termguicolors

colorscheme dracula_pro
set re=0

" Use hybrid numbering in the active window
" Use regular numbering in the inactive windows
:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Spaces instead of tabs
set autoindent expandtab tabstop=2 shiftwidth=2
" Toggle spell check
:map <F5> :setlocal spell! spelllang=en_us<CR>

:nnoremap π :ALEGoToDefinition<CR>

" vim-markdown enables folding by default, but I find this confusing
let g:vim_markdown_folding_disabled = 1
