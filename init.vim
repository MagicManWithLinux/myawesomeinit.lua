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
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim' " Табы ^ свеху плагины для них
Plug 'andweeb/presence.nvim' " discord rpc
call plug#end()
" -------

" Чуть насроек
syntax on " Ситнакс
set number " Строки
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus " Буфер Обмена
language en_US
set encoding=UTF-8
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

" discord rpc
" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_log_level
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"
" ------------------------------------------------------
