set encoding=utf8
" Вкл/выкл подсветку при поске на F3
"set hlsearch!

nnoremap <F3> :set hlsearch!<CR>
" Установить <Leader> на ,
let mapleader = ","

set nocompatible
" Enable syntax for .conf files
setf dosini

" Превратить табы в пробелы
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set autoindent
set smartindent

" Отображать номера строк 
set number
set relativenumber

" Autocomplete in (:) command panel
set wildmode=longest,list:full

syntax on

set mouse=a

set clipboard=unnamedplus

set ttyfast
filetype plugin indent on

call plug#begin("~/.vim/plugged")
Plug 'preservim/nerdcommenter'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'folke/tokyonight.nvim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
colorscheme tokyonight-night

" For semshi change color

function MyCustomHighlights()
    hi semshiLocal           ctermfg=209 guifg=#ff875f
	hi semshiGlobal          ctermfg=214 guifg=#ffaf00
	hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
	hi semshiParameter       ctermfg=75  guifg=#5fafff
	hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
	hi semshiFree            ctermfg=218 guifg=#ffafd7
	hi semshiAttribute       ctermfg=49  guifg=#00ffaf
	hi semshiSelf            ctermfg=249 guifg=#b2b2b2
	hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
	hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f
	hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
	hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    hi semshiBuiltin       	 ctermfg=207 guifg=#f5e0f8
endfunction
autocmd FileType python call MyCustomHighlights()

" Bottom line
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_statusline_ontop=0
"let g:airline_theme='deus'
"let g:airline#extensions#tabline#formatter = 'default'

" Автокомплиты через Tab
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"call plug#end()

" set notermguicolors
set termguicolors
