set nocompatible    " be improved
filetype off        " reuqired

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugins
"
" Brief help
" :PluginList       -lists configured plugins
" :PluginInstall    -installs plugins;append '!' to update or just :PluginUpdate
" :PluginSearch foo -searches for foo; append '!' to refresh local cache
" :PluginClean      -confirms removal of unused plugins; append '!' to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle {
set rtp+=~/.vim/bundle/Vundle.vim
" setting in windows
" set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#rc()
" }
"
call vundle#begin()
" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Plugins
" different formats supported
"
" plugin on GitHub repo


" plugin from http://vim-scripts.org/vim/scripts.html

Plugin 'TagList.vim'
Plugin 'WinManager'
Plugin 'minibufexpl.vim'
Plugin 'a.vim'
Plugin 'grep.vim'

" Git plugin not hosted on GitHub
" git repos on local machine(i.e. when working on your own plugin)

call vundle#end()

filetype plugin indent on
set completeopt=longest,menu


" Plugins setting
" 
" 'WinManager' combinate the TagList window and netrw window

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

let g:miniBufExplMapCTabSwitchBufs = 1

let g:miniBufExplMapWindowNavVim = 1

nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>
" Common Setting

syntax enable
syntax on
set nu

" color setting
colorscheme desert
set guifont=Courier
