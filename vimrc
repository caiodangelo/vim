"==================================================================================
" Configurando o Vundle
" Vundle é um plugin que gerencia a instalação de novos plugins no vim
"==================================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype indent on

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tomtom/tcomment_vim'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-unimpaired'

"==================================================================================
" Configurando a identação do editor
"==================================================================================
set ai           "Auto-identação
set expandtab    "Criar espaco ano lugar da tabulação
set shiftwidth=2 "Cria 2 espaçoes na tabulação
set tabstop=2    "Altera largura da tabulação
set sm           "Mostra o inicio de um bloco recem fechado

"==================================================================================
" Configurando as buscas
"==================================================================================
set is           "A cada caractere digitado, a busca automaticamente é incrementada
set hls          "Destaca as palavras encontradas
set ic           "Ignora case das letras (maiusculos e minusculos)
set scs          "Se a primeira letra for maiuscula, ele passa a considerar o case (maiusculos e minuscolos)

"==================================================================================
" Configurando para desabilitar os backups
" Para que nao fique gerando arquivos temporarios, 
" iniados com '~' e terminados em '.swp'
"==================================================================================
set nobackup
set noswapfile
set nowritebackup

"==================================================================================
" Configurando outras coisas
"==================================================================================
set number       "Exibe o numero de cada linha
set title        "No titulo da janela exibe o nome do arquivo aberto
syntax on        "Habilita sintaxe colorida
colorscheme vividchalk "Define um schema de cores

"==================================================================================
" Configurando o plugin NERDTREE
"==================================================================================
" Atalho para habilitar ou desabilitar plugin com: CTRL + N
map <C-n> :NERDTreeToggle<CR>

"==================================================================================
" Configurando o plugin CTRLP
"==================================================================================
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*/bin/*,*/coverage/*,*/log/*,*/public/uploads/* 

"==================================================================================
" Configurando Atalhos
"==================================================================================
map <C-l> :set cursorcolumn!<Bar>set cursorline!<CR>

"==================================================================================
" Configurando o plugin POWERLINE
"==================================================================================
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline#extensions#tabline#tab_min_count=2
set t_Co=256

"==================================================================================
" Configurando o plugin SNIPMATE
"==================================================================================
autocmd BufNewFile,BufRead *.html.erb set filetype=html
autocmd BufNewFile,BufRead *.js.* set filetype=js

"==================================================================================
" Configurando a navegacao em tab
"==================================================================================
set hidden
let mapleader = ","
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>


"==================================================================================
" Configurando Fugitive atalhos
"==================================================================================
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push

"==================================================================================
" Configurando Atalho patra formatar codigo
"==================================================================================
nnoremap <leader>f gg=G<cr>
