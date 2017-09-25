" =============================================================================
" Plugin Manager Setup
" =============================================================================
"
filetype off

" Install the plugin manager if it doesn't exist
let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
  echom 'vim-plug not found. Installing...'
  if executable('curl')
    silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' .
          \ s:plugin_url
  elseif executable('wget')
    call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
    silent exec '!wget --force-directories --no-check-certificate -O ' .
          \ expand(s:plugin_manager) . ' ' . s:plugin_url
  else
    echom 'Could not download plugin manager. No plugins were installed.'
    finish
  endif
  augroup vimplug
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif

" Create a horizontal split at the bottom when installing plugins
let g:plug_window = 'botright new'

let g:plug_dir = expand('~/.vim/plugged')

" Specify a directory for plugins
call plug#begin(g:plug_dir)

" Syntax and language specific
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'ElmCast/elm-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'othree/jspc.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug '1995eaton/vim-better-javascript-completion'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
Plug 'tpope/vim-sleuth'
Plug 'digitaltoad/vim-pug'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'robertbasic/vim-hugo-helper'
Plug 'ekalinin/Dockerfile.vim'
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'
Plug 'junegunn/vim-emoji'

" Actual Plugs
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify' " Fancy start screen. Lets you open empty buffers, multiple files, etc
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'vimlab/split-term.vim'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-rbenv'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'janko-m/vim-test'
Plug 'mattn/emmet-vim'
Plug 'rizzatti/dash.vim'
Plug 'heavenshell/vim-jsdoc'

call plug#end()
