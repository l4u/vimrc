python from powerline.bindings.vim import source_plugin; source_plugin()
set nocompatible               " Be iMproved

if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" colorscheme
NeoBundle 'l4u/tomorrow-theme'

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

" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle "kien/ctrlp.vim"

" A Vim plugin which shows a git diff in the gutter (sign column).
NeoBundle "airblade/vim-gitgutter"

" Erlang and elixir
NeoBundle "aerosol/vimerl"
NeoBundle "elixir-lang/vim-elixir"

NeoBundle "majutsushi/tagbar"

" auto complete
NeoBundle "Valloric/YouCompleteMe"
"NeoBundle "Shougo/neocomplcache.git"
"NeoBundle "Shougo/neosnippet.git"

" Syntax checker
NeoBundle "scrooloose/syntastic"

" Vim: Hard Mode
NeoBundle "wikitopian/hardmode"

" A Vim plugin for visually displaying indent levels in code 
" NeoBundle 'nathanaelkane/vim-indent-guides'

set number
set colorcolumn=80
colorscheme Tomorrow-Night
set ic " case insensitive search

set noswapfile
set nobackup

set tabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

let g:erlang_use_conceal=1

" force 256 colors even if TERM is not xterm-256color
" set t_Co=256

" Launches neocomplcache automatically on vim startup
let g:neocomplcache_enable_at_startup=1

" For snippet_complete marker
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Fix syntax highlighting
let c_minlines=500
autocmd BufEnter * :syntax sync fromstart

" Show invisible characters
set list
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+

nmap <F6> :TagbarToggle<CR>
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>

"let erlang_folding=1

" indent guide colors
"autocmd VimEnter * :IndentGuidesEnable
"let g:indent_guides_auto_colors=0
"let g:indent_guides_guide_size=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black guibg=black ctermbg=1 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey guibg=darkgrey ctermbg=2

" space to line break and sort unique
command SpaceToLineBreakAndSort %s/ /\r/ge | sort u 

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" make gutter always on 
" https://github.com/scrooloose/syntastic/issues/255
augroup mine
  au BufWinEnter * sign define mysign
  au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
augroup END

" hard mode config
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
