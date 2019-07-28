set nocompatible     " required
set showtabline=2
set laststatus=2
set noshowmode
filetype off         " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all plugins here
"Plugin 'ervandew/supertab'
Plugin 'lervag/vimtex'
Bundle 'sirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'lazywei/vim-matlab'
Plugin 'powerline/powerline', {'rtp' : 'powerline/bindings/vim/'}
" Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kien/ctrlp.vim'
"Plugin 'jmcantrell/vim-virtualenv'
Plugin 'surround.vim'
"Plugin 'burnttoast256'
"Plugin 'dim13/smyck.vim'
" All of your Plugins must be added before the following line
call vundle#end()     " required
" filetype plugin indent on " required

"split navigation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" reassign escape key
"
" Assign leader key
:let mapleader = 'å'
:nnoremap <leader>o o<Esc>k
:nnoremap <leader>O O<Esc>j
"
" Assign localleader key
:let maplocalleader = '-'
:nnoremap <localleader>o o<Esc>o
" Enable folding

" set foldmethod=indent
" set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> = za

" let g:SimpylFold_docstrings_preview=1

" PEP8 Indentation

au BufNewFile,Bufread *.py,*.c
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

" Full stack development guidelines
au BufNewFile,BufRead *.js,*.html,*.css:
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

" Highlight bad whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set UTF-8 encoding
set encoding=utf-8

" customizations for YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g : YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make the code pretty
let python_highlight_all=1
syntax on

set t_Co=256

" Logic for color-scheme
"if has('gui-running')
"	set background=dark
"	colorscheme solarized
"else
"	colorscheme zenburn
"endif
let g:zenburn_high_Contrast = 1
colorscheme zenburn

"call togglebg#map("<F5>")

"  Set line numbering on
set number relativenumber

" enable system clipboard
set clipboard=unnamed

" Settings for virtualenv
let g:virtualenv_directory='~/.venvs/'
let g:virtualenv_auto_activate=1

"Settings for Syntastic
let g:syntastic_python_checkers=['flake8', 'python3']

"Smash Escape jk
:imap jk <Esc>
:imap kj <Esc>

" Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=0
"let g:tex_conceal='abdmg'
let g:vimtex_mappings_enabled = 1
" Stupid workaround for now.
nmap <localleader>ll <plug>(vimtex-compile)

" Fixing the interaction between YCM and Ultisnips using supertab
"let g:ycm_key_list_selection_completion = ['<C-n>']
"let g:ycm_key_list_previous_completion = ['<C-p>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" Ultisnips configuration
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-o>"
let g:UltiSnipsUsePythonVersion=3


" Set scrolloff to control number of lines below the cursor
:set scrolloff=5
