" vim:fdm=marker fmr={,}

" NeoBundleInit {
set nocompatible               " Be iMproved

if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch "Shougo/neobundle.vim"
" }
" Plugins {

" powerline
NeoBundle "bling/vim-airline"

" colorscheme
NeoBundle "l4u/tomorrow-theme"

" indentation lines
NeoBundle 'Yggdroot/indentLine'

" sensible.vim: Defaults everyone can agree on
NeoBundle "tpope/vim-sensible"

" sleuth.vim: Heuristically set buffer options
NeoBundle "tpope/vim-sleuth"

" eunuch.vim: helpers for UNIX
NeoBundle "tpope/vim-eunuch"

" Vim Markdown runtime files
NeoBundle "tpope/vim-markdown"

" fugitive.vim: a Git wrapper so awesome, it should be illegal
NeoBundle "tpope/vim-fugitive"

" abolish.vim: easily search for, substitute, and abbreviate multiple variants
" of a word
NeoBundle "tpope/vim-abolish"

" speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
NeoBundle 'tpope/vim-speeddating'

" repeat.vim: enable repeating supported plugin maps with "."
NeoBundle "tpope/vim-repeat"

" endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script,
" etc
NeoBundle "tpope/vim-endwise"

" surround.vim: quoting/parenthesizing made simple
NeoBundle "tpope/vim-surround"

" dispatch.vim: asynchronous build and test dispatcher
NeoBundle "tpope/vim-dispatch"

" Vim Liquid runtime files with Jekyll enhancements
NeoBundle "tpope/vim-liquid"

" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle "kien/ctrlp.vim"

" A Vim plugin which shows a git diff in the gutter (sign column).
NeoBundle "airblade/vim-gitgutter"

" Vim plugin that displays tags in a window, ordered by class etc.
NeoBundle "majutsushi/tagbar"

" auto complete
NeoBundle "Valloric/YouCompleteMe"

" snippets
NeoBundle "SirVer/ultisnips"

" Syntax checker
NeoBundle "scrooloose/syntastic"

" Vim: Hard Mode
NeoBundle "wikitopian/hardmode"

" Vim motions on speed
NeoBundle "Lokaltog/vim-easymotion"

" Maintains a history of previous yanks, changes and deletes
"NeoBundle "YankRing.vim"

" Text outlining and task management for Vim based on Emacs' Org-Mode
NeoBundle "jceb/vim-orgmode"

" VimOrganizer is partly a clone of Emacs' Org-mode, and partly a front end to
" Org-mode itself. Do Org in Vim.
" NeoBundle "hsitz/VimOrganizer"

" Calendar
NeoBundle "mattn/calendar-vim"

" utl.vim : Univeral Text Linking - Execute URLs, footnotes, open emails,
" organize ideas
NeoBundle "utl.vim"

" TOML
NeoBundle "cespare/vim-toml"

" Identify and Irradicate unwanted whitespace at the end of the line
NeoBundle "csexton/trailertrash.vim"

" A simple Vim plugin to switch segments of text with predefined replacements
NeoBundle "AndrewRadev/switch.vim"

" With bufexplorer, you can quickly and easily switch between buffers
NeoBundle "bufexplorer.zip"

" An extensible & universal comment vim-plugin that also handles embedded
" filetypes
NeoBundle "tomtom/tcomment_vim"

" Better Rainbow Parentheses
NeoBundle "kien/rainbow_parentheses.vim"

" Vim plugin, provides insert mode auto-completion for quotes, parens,
" brackets, etc.
NeoBundle "Raimondi/delimitMate"

" The missing motion for Vim
NeoBundle 'justinmk/vim-sneak'

" Clojure {
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'dgrnbrg/vim-redl'
" }

" Scala {
NeoBundle 'derekwyatt/vim-scala'
" }

" Go {
NeoBundle "jnwhiteh/vim-golang"
NeoBundle 'Blackrush/vim-gocode'
" }

" Erlang and elixir {
NeoBundle "jimenezrick/vimerl"
NeoBundle "elixir-lang/vim-elixir"
" }

" Haskell {
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'dag/vim2hs'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'eagletmt/neco-ghc'
" }

" C {
NeoBundle "b4winckler/vim-objc"
NeoBundle 'eraserhd/vim-ios.git'
NeoBundle "derekwyatt/vim-fswitch"
NeoBundle 'rhysd/vim-clang-format'
" }
" Rails, YAML, Haml, CoffeeScript {
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-haml" " Haml, Sass, SCSS
NeoBundle "groenewege/vim-less"
NeoBundle "kchmck/vim-coffee-script"
NeoBundle "ingydotnet/yaml-vim"
NeoBundle "sunaku/vim-ruby-minitest"
NeoBundle "vim-scripts/JavaScript-Indent"
NeoBundle "marijnh/tern_for_vim"
NeoBundle "jakar/vim-json"
NeoBundle "kchmck/vim-coffee-script"
" }
" Settings {
" Key Mapping {
let mapleader = ","
let maplocalleader = "\\"
noremap <space> za
nmap <F9> :GhcModType <CR>
nmap <F10> :GhcModTypeClear <CR>
" }
" Restore view {
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
" }
" Auto trim spaces {

"autocmd FileWritePre * :Trim
"autocmd FileAppendPre * :Trim
"autocmd FilterWritePre * :Trim
"autocmd BufWritePre * :Trim
" }
" Colors {
" force 256 colors even if TERM is not xterm-256color
set t_Co=256
set background=dark
colorscheme Tomorrow-Night

" Fix syntax highlighting
let c_minlines=500
autocmd BufEnter * :syntax sync fromstart
" }
" GUI Font {
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h16
" }
" Show invisible characters {
set list
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+
" }
" Custom Commands {
" space to line break and sort unique
command SpaceToLineBreakAndSort %s/ /\r/ge | sort u
" }
" Copy & Paste {
nmap <F6> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F6> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F5> :.w !pbcopy<CR><CR>
vmap <F5> :w !pbcopy<CR><CR>
" }
" spell checker {
au BufNewFile,BufRead *.md setlocal spell spelllang=en_us
au BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us
" }
" Other Settings {
set scroll=15
set number
set colorcolumn=80
set ic " case insensitive search

nmap ; :

set noswapfile
set nobackup

set tabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
" End of Other Settings }
" End of Settings }
" Plugin Settings {
" dispatch {
nnoremap <leader>d :Dispatch<CR>
" }
" TagBar {
nmap <leader>t :TagbarToggle<CR>
nnoremap <leader>p :set invpaste paste?<CR>
set pastetoggle=<leader>p
" }
" ultisnips {
let g:UltiSnipsExpandTrigger = '<c-j>'
" }
" syntastic {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" }
" make gutter always on {
" https://github.com/scrooloose/syntastic/issues/255
augroup mine
  au BufWinEnter * sign define mysign
  au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
augroup END
" }
" hard mode {
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" }
" vim motion {
"let g:EasyMotion_leader_key = '<space>'
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
"let g:EasyMotion_mapping_f = '<space>'
"let g:EasyMotion_mapping_w = '<space><space>'
" }
" ctrlp {
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = 'vendor\|tmp\|Pods\|\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
nmap <F7> :CtrlPClearAllCaches<CR>
" }
" gitgutter {
augroup gitgutter
  autocmd BufEnter * call GitGutter()
augroup END
" }
" orgmode {
nmap ,<space> <localleader>ct
nmap ,od <localleader>sa
" }
" VimOrganizer {
" au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
" au BufEnter *.org            call org#SetOrgFileType()
" }
" Erlang {
let g:erlang_use_conceal=1
" }
" Ruby, rails {
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile Podfile,*.podspec setf ruby
" }
" CoffeeScript {
au BufWritePost *.coffee CoffeeLint | cwindow | redraw!
" }
" switch.vim {
nnoremap - :Switch<cr>
" }
" tcomment_vim {
" toggle comment for the current line
nmap ;; gcc
" }
" auto rainbow {
nnoremap <leader>r :RainbowParenthesesToggleAll<cr>
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" }
" airline {
let g:airline_powerline_fonts=1
set timeout timeoutlen=500 ttimeoutlen=50 "Fix slow O inserts
" }
" vim-move {
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" }
" indentLine {
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
" }
" End of Plugin Settings }
