" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" -------------------------------------------------------
" Delimit Mate is a great plugin which will autoclose
" brackets for you.
"
" -------------------------------------------------------
" You should also install the surround plugin (:help surround) 
" It's really useful to quote while programming
" These are some common cases I have:
"	  Surround a expression with quotes or parentheses:
"	   if *x>3 {                 ysW(        if ( x>3 ) {
"	  Select visually and quote
"	   my $str = *whee!;         vlllls'     my $str = 'whee!';

" -------------------------------------------------------
" How to comment blocks of code?
"   Select a block of code visually and comment it out:
"	    
"	    * Type 0 to get to the beginning of the line
"	    * <ctrl-v> to switch to visual mode
"	    * Type j and select the lines to comment out
"	    * Press I and type the comment character (# or // etc.)
"	    * Press Esc 
" -------------------------------------------------------
" T-Comment Plugin: provides really cool toggling of 
" code comments. 
" Just select a code Block and toggle
" comments with gc or toggle one line with gcc
" -------------------------------------------------------
" Vim-Align: Helps to format code by aligning along various chars.
" Just select the code block to align and enter
"   :Align <alignment char sequence>
" 
" For example:
"
" set mouse=a  using    :Align =
"
" becomes: set mouse = a
"
" -------------------------------------------------------
" VISUAL STUFF 

" Enable clicking with the mouse
set mouse=a

" Use 256 colors if you can
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
  "set background=dark
  
  " lets use a cool colorscheme
  " colorscheme mustang
  colorscheme mango
endif

set title " set title in terminal
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set cmdheight=2 "The commandbar height

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" -------------------------------------------------------
" Customize the  Statusline
 
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
  let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
  return curdir
endfunction

function! HasPaste()
	if &paste
	return 'PASTE MODE  '
	else
	return ''
	endif
endfunction


" -------------------------------------------------------
" MUST HAVE (really)

" Autoindenting
" TODO: Should be autocmd
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set ai "Auto indent
set si "Smart indet

" Enable filetype plugin
filetype plugin on
filetype indent on

" Syntax coloring should be always turned on
syntax on
" line numbers are always useful
set number

" Search settings
set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set showmatch "Show matching bracets when text indicator is over them

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" This is very important: Map the leader to a character
" you can conveniently reach on the keyboard. The
" default leader is \ which is usually quite hard to reach.
" A good choice is ",". TRY THIS: Use space
let mapleader = " " 
let g:mapleader = " "

" Now we can save much quicker
nmap <leader>w :w!<cr>
" Speed up closing tabs
nmap <leader>q :q<cr>

" Map FuzzyFinder
map <leader>t :FufFile<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" -------------------------------------------------------
" GUndo helps with the vim undo tree
nnoremap <F3> :GundoToggle<CR>

" -------------------------------------------------------
" Cope opens the quickfix window
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>


" -------------------------------------------------------
" VISUAL SEARCH
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // *.<left><left><left><left><left><left><left>

" From an idea by Michael Naumann
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSearch(direction) range
     let l:saved_reg = @"
         execute "normal! vgvy"

             let l:pattern = escape(@", '\\/.*$^~[]')
                 let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" -------------------------------------------------------
" Taglist: generate tags from files 
" use <ctrl-]> to jump to a tag
" use <ctrl-t> to jump back
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
" TRY THIS: Toggle the taglist view
map <F4> :TlistToggle<cr> 
" TRY THIS: Build the tags using F8
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" -------------------------------------------------------
" Supertab: Best autocompletion I know for vim
let g:SuperTabDefaultCompletionType = "context"


" -------------------------------------------------------
" Filetype specific settings
" -------------------------------------------------------
" Ruby
au FileType ruby set makeprg=ruby\ % 
au FileType ruby map <F5> :make<cr>
" Javascript
au FileType javascript set makeprg=node\ % 
au FileType javascript map <F5> :make<cr>

