" don't make vim compatible with vi
set nocompatible

" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on
filetype indent on

" encoding is utf-8
set encoding=utf-8
set fileencoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required!
" The bundles you install will be listed here
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/Command-T'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'flazz/vim-colorschemes'
Plugin 'myusuf3/numbers.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-system-copy'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'pearofducks/ansible-vim'
colorscheme BlackSea

" React based
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on

let mapleader = ","
set et
set ai
set sw=4
set ts=4
set ruler
set si
set nu
set is
set ic
set sm
set sta
set backspace=indent,eol,start
set hlsearch
set nobackup
set nowritebackup
set path+=**
set wildmenu
set incsearch
syn on

"" Highlight Whitespaces with Red
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set expandtab       " Convert tab to spaces
set tw=79           " Automatic word wrapping at 79
set wrap            " Set wrapping of words
set linebreak       " Only break line when I press Enter
set nolist          " List disables linebreak
set hlsearch        " Highlight Search
set makeprg=g++\ %  " Configuration for :make in vim
set smarttab        " Makes tabs insert "indents" at the beginning of the line
set colorcolumn=80  " Set the color column to 80 characters
highlight ColorColumn ctermbg=7
set pastetoggle=<F3>    " Toggle paste


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" file-based configuration
autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab

" some commands from vim
command! -nargs=* -complete=file Gcheckout :!git checkout %
command! -nargs=* -complete=file GDiff :!git diff %
command! -nargs=* -complete=file Ar :!sudo /etc/init.d/apache2 restart
command! -nargs=* -complete=file Rs :!export SRCPATH=%:p:h && export DESTPATH=${SRCPATH/static_media/static} && stylus % && mv %:r.css $DESTPATH
command! -nargs=* -complete=file Cp :!export SRCPATH=%:p:h && export DESTPATH=${SRCPATH/static_media/static} && cp % $DESTPATH

" Sort the current paragraph.
" Useful for sorting includes, imports, namespaces and other declaration groups.
" With this enabled, you can just insert ur statement anywhere and just press ,s
nmap ,s {jv}k:sort<CR>
nmap \o :set paste!<CR>         " Toggles paste mode
nmap \l :setlocal number!<CR>   " Toggles line numbers
nmap \q :nohlsearch<CR>         " Clear highlight search
nmap \e :NERDTreeToggle<CR>     " Toggle NerdTree
vmap \cc :s/^/#/<cr>
vmap \co :s/^#//<cr>
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>

au FileType make set noet

" Copy to clipboards * and +
" vmap "+y :!xclip -f -sel clip
" map "+p :r!xclip -o -sel clip

" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p
"



" Plugins Installations and Configurations

" Vim airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2    " Always show statusline
set t_Co=256        " Use 256 colours (Use this setting only if your terminal supports 256 colours)

" Syntastic
" let g:syntastic_check_on_open=1
" let g:syntastic_enable_signs=1

" Ctrl-P Buffers
set runtimepath^=~/.vim/bundle/ctrlp.vim
nmap ; :CtrlPBuffer<CR>
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Vim Powerline configurations
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
