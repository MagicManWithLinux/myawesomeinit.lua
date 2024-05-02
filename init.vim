" Плагины
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Автозаполнялка
" CocInstall coc-clangd coc-sh coc-markdownlint coc-pyright coc-snippets
Plug 'vim-airline/vim-airline' " Полосочка такая
Plug 'vim-airline/vim-airline-themes' " Темы для неё
Plug 'morhetz/gruvbox' " Цвета
Plug 'romainl/vim-cool' " Выключись подсветка при поиске
Plug 'cohama/lexima.vim' " Закрой скобки за меня
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Мульти курсор (Ctrl-N)
call plug#end()
" -------

" Чуть насроек
syntax on " Ситнакс
set number " Строки
set ts=4 sw=4 " Таб 4 пробела
set clipboard+=unnamedplus " Буфер Обмена
" ------------

" Таб для coc.nvim
inoremap <silent><expr> <Tab>
  \ coc#pum#visible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ NextCharIsPair() ? "\<Right>" :
  \ CheckBackspace() ? "\<Tab>" :
  \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1 
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! NextCharIsPair() abort
  let col = col('.') - 1 
  let l:next_char = getline('.')[col]
  return l:next_char =~# ')\|]\|}\|>\|''\|"\|`'
endfunction

let g:coc_snippet_next = '<tab>'
" ----------------

" gruvbox
colorscheme gruvbox
" -------

" vim-airline
let g:airline_theme='gruvbox'
" -----------
