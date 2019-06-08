call plug#begin('~/.vim/plugged')

"i3wm config syntax------------------------------
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'https://github.com/mboughaba/i3config.vim.git'
"------------------------------------------------

"Airline (The line down)-------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"------------------------------------------------

"Dracula color-----------------------------------
Plug 'dracula/vim', { 'as': 'dracula' }
"------------------------------------------------

"Gruvbox color-----------------------------------
Plug 'https://github.com/morhetz/gruvbox.git'
"------------------------------------------------

"Vim css colors----------------------------------
Plug 'https://github.com/ap/vim-css-color.git'
"------------------------------------------------

"Easy copy---------------------------------------
Plug 'https://github.com/christoomey/vim-system-copy.git'
"------------------------------------------------

call plug#end()

"Theming-----------------------------------------
let g:gruvbox_termcolors=256
let g:gruvbox_italic=1
set t_Co=256
set cursorline
set number
set laststatus=2
set showcmd
set showtabline=1
set noshowmode
set mouse=a
syntax enable
syntax on
"------------------------------------------------
set background=dark
colorscheme gruvbox
"colorscheme dracula
"------------------------------------------------

"Airline-Theming---------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
"let g:airline_theme='dracula'
"------------------------------------------------
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"UnicodeSymbols----------------------------------
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"AirlineSymbols----------------------------------
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"------------------------------------------------

"I3-ConfigSyntax---------------------------------
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
"------------------------------------------------

"LiveLatexPreview--------------------------------
"let g:livepreview_engine = pydflatex
map L :LLPStartPreview<CR><CR>
"------------------------------------------------

"Essentials
"MappingOfLeader---------------------------------
let mapleader="\<Space>"
"------------------------------------------------

"EasySaveAndQuit
"Use space + w to save buffer-------------------
nnoremap <leader>w :w<cr>
"Use space + q to quit--------------------------
nnoremap <leader>q :q!<cr>
"-----------------------------------------------

"Replace the word under cursor------------------
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>
"----------------------------------------------

"Move lines around-----------------------------
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv
"---------------------------------------------

"Avoid pressing scape-------------------------
imap <leader>q <Esc>
inoremap qq <Esc>           
"---------------------------------------------
    			
" Commenting----------------------------------
"Space-1  insert  "!" commentig
nnoremap <leader>1 :norm i!<cr>
vnoremap <leader>1 :norm i!<cr>

"Space-'  insert  """ commenting 

nnoremap <leader>' :norm i"<cr>
vnoremap <leader>' :norm i"<cr>""

"Space-4 insert "#" commenting

noremap <leader>4 :norm i#<cr>
noremap <leader>4 :norm i#<cr>

"Space-- insert "--" commenting

nnoremap <leader>- :norm i--<cr>
vnoremap <leader>- :norm i--<cr>

"Space-6 uncomment

nnoremap <leader>6 :norm ^x <cr>norm ^x<cr>
vnoremap <leader>6 :norm ^x <cr>norm ^x<cr>
"------------------------------------------------	
