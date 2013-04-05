" vim:fdm=marker fmr={,}
python from powerline.bindings.vim import source_plugin; source_plugin()
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

" colorscheme
NeoBundle "l4u/tomorrow-theme"

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

" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle "kien/ctrlp.vim"

" A Vim plugin which shows a git diff in the gutter (sign column).
NeoBundle "airblade/vim-gitgutter"

" Vim plugin that displays tags in a window, ordered by class etc.
NeoBundle "majutsushi/tagbar"

" auto complete
NeoBundle "Valloric/YouCompleteMe"
"NeoBundle "Shougo/neocomplcache.git"
"NeoBundle "Shougo/neosnippet.git"

" Syntax checker
NeoBundle "scrooloose/syntastic"

" Vim: Hard Mode
NeoBundle "wikitopian/hardmode"

" Smooths scrolls the window for various key mappings
" C-U, C-D, C-F, C-B
NeoBundle "Smooth-Scroll"

" Vim motions on speed
NeoBundle "Lokaltog/vim-easymotion"

" Maintains a history of previous yanks, changes and deletes
NeoBundle "YankRing.vim"

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

" Vim plugin for intensely orgasmic commenting
NeoBundle "scrooloose/nerdcommenter"

" Better Rainbow Parentheses
NeoBundle "kien/rainbow_parentheses.vim"

" Erlang and elixir
NeoBundle "aerosol/vimerl"
NeoBundle "elixir-lang/vim-elixir"

" Rails, YAML, Haml, CoffeeScript
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-haml"
NeoBundle "kchmck/vim-coffee-script"
NeoBundle "ingydotnet/yaml-vim"
NeoBundle "sunaku/vim-ruby-minitest"

" }
" Settings {
" Window Navigation {
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" }
" Key Mapping {
let mapleader = ","
let maplocalleader = "\\"
noremap <space> za
" }
" Restore view {
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
" }
" Auto trim spaces {
autocmd FileWritePre * :Trim
autocmd FileAppendPre * :Trim
autocmd FilterWritePre * :Trim
autocmd BufWritePre * :Trim
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
" Show invisible characters {
set list
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+
" }
" Custom Commands {
" space to line break and sort unique
command SpaceToLineBreakAndSort %s/ /\r/ge | sort u
" }
" Other Settings {
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
" syntastic {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = 'vendor\|tmp\|Pods\|\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
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
" switch.vim {
nnoremap - :Switch<cr>
" }
" nercommenter {
nmap ;; <Leader>ci
" }
" auto rainbow {
nnoremap <leader>r :RainbowParenthesesToggleAll<cr>
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" }
" End of Plugin Settings }
