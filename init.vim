set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set number
set relativenumber
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set ruler
set history=9999
set encoding=utf8
syntax enable
hi VertSplit cterm=none

" plugin settings
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
call plug#end()

" key settings
noremap L $ "行末に移動
nnoremap <silent> tn <cmd>belowright new<CR><cmd>terminal<CR> " 下側でターミナルひらく
nnoremap <silent> qq :qall!<CR> " qqで保存せずに閉じる

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> <Plug>AirlineSelectPrevTab
nnoremap <C-n> <Plug>AirlineSelectNextTab

command Now echo expand('%:p') " ファイルパスを出力

" entry
autocmd VimEnter * execute 'NERDTree'

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'

" キーマッピング: https://vimblog.hatenablog.com/entry/vimrc_key_mapping
