syntax on
filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'AndrewRadev/splitjoin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Yggdroot/LeaderF'
Plugin 'arcticicestudio/nord-vim'
Plugin 'bling/vim-bufferline'
Plugin 'easymotion/vim-easymotion'
Plugin 'garbas/vim-snipmate'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/goyo.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'takac/vim-hardtime'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tlib'
Plugin 'wesQ3/vim-windowswap'
Plugin 'xolox/vim-misc'


call vundle#end()
filetype plugin indent on

set path+=**
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set backupcopy=yes
set showcmd
set hidden
set visualbell
set wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set ignorecase
set smartcase
set number relativenumber
set splitright
set splitbelow

highlight LineNr ctermfg=darkgrey

set shiftwidth=2
set softtabstop=2
set expandtab

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent! !stty ixon

"---Plugins---
"
" EasyMotion
nmap , \\

" Hardtime
let g:hardtime_default_on = 0
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
nnoremap <leader>h :HardTimeToggle<CR>

" Hide tmux status bar
autocmd VimEnter,VimLeave * silent !tmux set status

" NERDTree
nnoremap <leader>q :bp<cr>:bd #<cr>
nnoremap <leader>nt :NERDTreeToggle<CR>

"---Keymappings---
" Main keys
map <space> <leader>
inoremap jk <Esc>
nnoremap ; :
nnoremap : ;

" Toggle relative numbering
nnoremap <leader>rn :set relativenumber!<CR>

" Trim trailing spaces
nnoremap <leader>ts :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Write with sudo permissions
cmap :w!! w !sudo tee %<CR><CR>

" Replace current line with yanked one
nnoremap <leader>lp V"0p<CR>

" Paste line below with comma separating
nnoremap <leader>pc A,<Esc>p
nnoremap <leader>oc A,<Esc>o

" Buffers and windows
nnoremap <silent> <leader><Tab> :wincmd w<CR>
nnoremap <silent> <leader>b :bn<CR>

" Paragraph movement to end up in paragraph
:nnoremap } })

" Searches
nnoremap <leader>sa :%s/
nnoremap <leader>sl :s/

" Save
inoremap <c-s> <Esc>:update<cr>
nnoremap <c-s> :update<cr>

