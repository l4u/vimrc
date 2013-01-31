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

" Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle "kien/ctrlp.vim"

" Erlang and elixir
NeoBundle 'aerosol/vimerl'
NeoBundle 'elixir-lang/vim-elixir'

" auto complete
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'

" A Vim plugin for visually displaying indent levels in code 
NeoBundle 'nathanaelkane/vim-indent-guides'

set number
set colorcolumn=80
colorscheme Tomorrow-Night

let g:erlang_use_conceal=1

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

" indent guide colors
autocmd VimEnter * :IndentGuidesEnable
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black guibg=black ctermbg=1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey guibg=darkgrey ctermbg=2
