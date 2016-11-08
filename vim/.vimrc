"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set history=1000

"Always show file-tabs
set showtabline=2
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc


"Always show file-tabs
set showtabline=2

"Set keyboard cursor behavior
set whichwrap+=<,>,h,l,[,]

"Search options
"ignore case
set ignorecase
"but only if word is lowercase only
set smartcase
"search immediately after /
set incsearch
"highlight search result
set hlsearch

"Ruler in statusbar
set ruler
" Height of the command bar
set cmdheight=2

" Show matching brackets when text indicator is over the
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set noeb vb t_vb=

"Timeout
set timeoutlen=500

" For regular expressions turn magic on
set magic

"snowdragon
syntax on
set mouse=a
set tabstop=4 shiftwidth=4 expandtab
set autoindent
set number
"keybindings
set pastetoggle=<F10> "toggles automatic indentation and commenting
map <F2> :NERDTreeToggle<CR>
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
" The bundles you install will be listed here
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
"Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'keith/swift.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Powerline setup
set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
set laststatus=2
set termencoding=utf-8
set term=xterm-256color

" Mode switching
imap jj <Esc>
" Can be typed even faster than jj.
:imap jk <Esc>
" Press i to enter insert mode, and ii to exit.
:imap ii <Esc>
" Press Shift-Space (may not work on your system).
":imap <S-Space> <Esc>
" Try the following so Shift-Space also enters insert mode.
":nmap <S-Space> i
" Or just Space to enter insert mode.
":nmap <Space> i
" In Mac OS X, mapping <S-space> does not work, but the following
" is better (press the "apple" key and the space key).
" Note that this will conflict with the spotlight shortcut
":imap <D-space> <Esc>
" On gvim and Linux console Vim, you can use Alt-Space.
":imap <M-Space> <Esc>

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

