" Pathogen plugins
" execute pathogen#infect()
" vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'
Plug 'kien/ctrlp.vim'
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
" Powerline
set rtp+=$HOME/src/powerline/powerline/bindings/vim

" Bindings
" Movement
noremap <S-H> ^
noremap <S-J> 5j
noremap <S-K> 5k
noremap <S-L> <End>
" Normal mode
"nnoremap zl zO
"nnoremap zh zX
"nnoremap zS :setlocal foldmethod=syntax<CR>zr
nnoremap <Leader>h :set hlsearch!<CR>
nmap <Leader>q :copen<CR>
" Insert mode
inoremap <Leader>; <Esc>mrA;<Esc>`rmra
" Plugins
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>gg :Gstatus<CR> <C-W>J
nmap <Leader>gpp :Gpush<CR>
nmap <Leader>gpl :Gpull<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gr :Gread\|w<CR>
nmap <Leader>gll :Glog -5 --<CR><CR>
nmap <Leader>so :OpenSession<CR>
nmap <Leader>ss :SaveSession<CR>

" Indentation
set shiftwidth=2
set cindent
set tabstop=4 softtabstop=2
set expandtab
set cino=>s,(s,j1,J1

" Folding
set foldmethod=syntax
let javaScript_fold=1
set foldlevelstart=99

" Misc
set t_Co=256
colorscheme elflord
"set splitbelow
"set splitright
set nohlsearch
set number
set wildignore+=*/node_modules/*
set wildignore+=*/ext/*
set wildignore+=*/build/*
highlight LineNr ctermfg=white ctermbg=darkgrey
highlight Folded ctermbg=black
highlight DiffAdd ctermbg=darkgreen
highlight DiffChange ctermbg=blue
highlight DiffText ctermbg=darkblue
highlight DiffDelete ctermbg=darkred
set autoread

" Plugins
filetype plugin on
let g:AutoPairsUseInsertedCount = 1
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#autoformat = 0
let g:prettier#config#bracket_spacing = 'true'
let dart_format_on_save = 1
let g:fugitive_gitlab_domains = ['git.maubic.es:10080']
let g:gitlab_api_keys = {'git.maubic.es:10800': 'yJS_rdvS5BnMUzzhn3aL'}
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
