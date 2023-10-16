call plug#begin('~/.local/share/nvim/site/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
" VIM Polygot
Plug 'sheerun/vim-polyglot'
" COC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"NERD Tree Files Explorer
Plug 'preservim/nerdtree'
" Flutter Plugins
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
"Fuzzy Finder (Quick Navigation)
Plug 'wincent/command-t'
" Theme Management Tool
" Themes
Plug 'bluz71/vim-nightfly-colors'
" Prettier 
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" Night Fox 
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
" Jelly Beans Theme
Plug 'nanotech/jellybeans.vim'
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
" 
Plug 'easymotion/vim-easymotion'
" Plugins for Markdown Files
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
" Pugin For Emmet
Plug 'mattn/emmet-vim'
" React JSX 
Plug 'maxmellon/vim-jsx-pretty'
" JS syntax highlighting
Plug 'pangloss/vim-javascript'

let g:plug_timeout = 300
Plug 'ycm-core/YouCompleteMe' , {'do' : './install.py'}

" FLutter Commands
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plugin for Integrating Jupyter Notebook with VIM
Plug 'ldelossa/nvim-ide'
" Nightfox Theme"
Plug 'EdenEast/nightfox.nvim' " Vim-Plug

Plug 'nanozuki/tabby.nvim',

Plug 'feline-nvim/feline.nvim'
Plug 'cocopon/iceberg.vim'

call plug#end()
" YCM
" windows default encoding is not supported
set encoding=utf-8

" If you using neovim and python isn't loading, copy your python setup from your
" vimrc here:
"
" let g:python3_host_prog = '/path/to/python3/with/neovim/module'
"
" But remember that neovim is not officially supported, so please reproduce in
" Vim.

" Enable debugging
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" If you're on an arm mac, uncomment the following line
" let g:ycm_clangd_binary_path=trim(system('brew --prefix llvm')).'/bin/clangd'

" If the base settings don't repro, paste your existing config for YCM only,
" here:
" let g:ycm_....

" Load YCM (only)
let &rtp .= ',' . expand( '<sfile>:p:h' )
filetype plugin indent on
let g:jedi#auto_initialization = 1
set rtp+=~/.vim/bundle/YouCompleteMe
let g:CommandTPreferredImplementation='lua'

nnoremap <silent> <C-p> :CommandT<CR>
nnoremap <silent> <C-b> :NERDTree<CR>
nnoremap <silent> <C-o> :CommandTBuffer<CR>
" Opens a new Tab
nnoremap <silent> <C-n> :tabedit<CR>
nnoremap <silent> <F3> :Prettier<CR>
" Go to Previous Tab
" nnoremap <silent> <C-h> gT<CR>
" Go to Next Tab
" nnoremap <silent> <C-;> gt<CR>
" Close Current Tab
nnoremap <silent> <C-q> :tabclose<CR>
nnoremap <silent> <C-f> :tabfirst<CR>
nnoremap H gT
nnoremap L gt
" Defining Shortcuts for shifting focus from windows
" noremap <c-h> <c-w><c-h>
"noremap <c-j> <c-w><c-j>
"noremap <c-k> <c-w><c-k>
"noremap <c-l> <c-w><c-l>
" Auto Pairs Closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
hi Pmenu cterm=underline ctermfg=250 ctermbg=235 gui=underline guifg=#bcbcbc guibg=#262626
hi PmenuSel cterm=underline ctermfg=250 ctermbg=131 gui=underline guifg=#bcbcbc guibg=#af5f5f


" Color Scheme Setup For Neovim


set background=dark
colorscheme iceberg


if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
" Auto Formatting code start
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END
" End of Auto Formatting Code
" Windows Resize Shortcuts
:nnoremap <silent> <c-Up> :resize -1<CR>
:nnoremap <silent> <c-Down> :resize +1<CR>
:nnoremap <silent> <c-left> :vertical resize -1<CR>
:nnoremap <silent> <c-right> :vertical resize +1<CR>
" Show Relative Number
:set relativenumber

