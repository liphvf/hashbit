set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"
" My plugins here:
''
" original repos on GitHub
" Com o comando contrl +p <c -p> você pode pesquisar arquivo em todo pc
Plugin 'kien/ctrlp.vim'


" Navegador de arquivo
Plugin 'scrooloose/nerdtree'


" linha informativa abaixo do texto
Plugin 'bling/vim-airline'


"Auto completa parenteces, chaves, conchetes...
" Plugin 'tpope/vim-surround'


"molokai temas de cores
Plugin 'tomasr/molokai'


"auto complet for css, html, markdown, javascript python xml
"Plugin 'Shougo/neocomplcache.vim/


"mosta clases e tudo que o taglist faz
Plugin 'majutsushi/tagbar'

"mosta as linhas de entendação
"Plugin 'Yggdroot/indentLine'

"EasyMotion, destaca linhas e vai até linhas
Plugin 'Lokaltog/vim-easymotion'

"Syntastic - verifica a syntasix em tempo real
Plugin 'scrooloose/syntastic'

"Auto complete
"Plugin 'Valloric/YouCompleteMe'

"Auto Format
Plugin 'Chiel92/vim-autoformat'

"NeoComplete
Plugin 'Shougo/neocomplete.vim'

"configurando a cor da linha de entendação
"let g:indentLine_color_term = 255 
"trocando o caracter de entendação por um a minha escolha
"let g:indentLine_char = '┆'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
''
''
''
''
''
''
"Attention: as notas estão organizados entre "

"Configuração Geral:

"Mudar a cor de fundo para preto
set background=dark
"


"Ativa a syntax highlight
syntax on
"


"set ai "auto identacao
"set ci "recuo
set sm
"mostra o final e inicio do bloco com cores


"Configuração do theme molokai
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
"


"Colocar númeração nas linhas e marcar-las com sublinhado
set number
set cursorline
"

"A descobrir
set ruler
"


"não ao espaço do tab / largura da tabulação/ altura da tabulação/ cria espaço no lugar da tabulação/ não se / tamanho do espaço do tabi
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
"

"não sei / coleção usada / coloração em 256 cores / ativa o mouse
set laststatus=2
set encoding=utf-8
set t_Co=256
set mouse=a
"


"
"Configurando airline plugin
"
" Apresneta um buffers em cima como abas para navegar
let g:airline#extensions#tabline#enabled = 1

"Coloca os simbolos e fonte airline
"let g:airline_powerline_fonts = 1

"
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"  endif
"let g:airline_symbols.space = "\ua0"
"

map <C-t> :tabnew <CR>
map <C-w> :q <CR>

"Thema da airline
let g:airline_theme = 'molokai'
"let g:airline_theme = 'wombat'


"Configuração do tagbar
nmap <F8> :TagbarToggle<CR>
"

"Configura NerdTree
map <C-n> :NERDTreeToggle<CR>

"
"Está parte são extras
"
"set relativenumber "a numeração anda
"syntax enable

"Python run script
map <F5> :!clear;python3 %<CR>
map <F12> :!firefox % <CR>


" EasyMotion Configuration

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just   provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)




" Syntastic configuração para python
"let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pylint']


"cofigure auto format para usar um constumizado
"g:formatprg_<filetype> in your .vimrc.


"Configure NeoComplete

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
"Use neocomplete.
let g:neocomplete#enable_at_startup = 1
"Use smartcase.
let g:neocomplete#enable_smart_case = 1
"Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()


"Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()


" Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() :
" "\<Space>"
"
" " For cursor moving in insert mode(Not recommended)
" "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
" "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
" "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
" "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" " Or set this.
" "let g:neocomplete#enable_cursor_hold_i = 1
" " Or set this.
" "let g:neocomplete#enable_insert_char_pre = 1
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"  Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

