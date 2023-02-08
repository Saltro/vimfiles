" Basic Settings
set number
set relativenumber
set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
syntax on
set showcmd
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
filetype indent on
set listchars=tab:<->,space:⋅
set list
set scrolloff=3
set ruler
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set backspace=indent,eol,start
set wildignore+=node_modules/**,.git/**,dist/**,target/**,*.png,*.jpg,*.jpeg,*.svg,*.gif,*.ttf,*.otf
set laststatus=2
set noshowmode
set nowrap
set re=0

let mapleader=","

" Key Mapping
noremap J 5j
noremap K 5k
noremap H ^
noremap L $
noremap S :w<CR>
noremap Q :q<CR>

inoremap <C-j> <Esc>

" Use <space>e to open explorer
nnoremap <space>e :CocCommand explorer<CR>

" Use onedark colorscheme
colo onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Use <tab> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <Tab> could be remapped by other vim plugin, try `:verbose imap <tab>`.
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<tab>"

" Use <leader>s to check git blame
nnoremap <leader>s :call gitblame#echo()<CR>

" Use K to show documentation in preview window
nnoremap <silent> du :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('du', 'in')
  endif
endfunction

" Open preview window at bottom of the current window
let g:git_messenger_preview_mods = "bo"

" Set wakatime cli path on windows
if has("win32")
  let g:wakatime_CLIPath = "~/.wakatime/wakatime-cli.exe"
endif

