" Basic Settings
set number
set relativenumber
set cursorline
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
syntax on
set showcmd
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
filetype indent on
filetype plugin on
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

" Use onedark colorscheme
packadd! onedark.vim
colo onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" Use <tab> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <Tab> could be remapped by other vim plugin, try `:verbose imap <tab>`.
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<tab>"

" Use <leader>s to check git blame
" nnoremap <leader>s :call gitblame#echo()<CR>

" Use K to show documentation in preview window
nnoremap <silent> gS :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('gS', 'in')
  endif
endfunction

" Go to code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Open preview window at bottom of the current window
let g:git_messenger_preview_mods = "bo"

" Set wakatime cli path on windows
if has("win32")
  let g:wakatime_CLIPath = "~/.wakatime/wakatime-cli.exe"
endif

let g:netrw_banner = 0
let g:netrw_fastbrowse = 0
" let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_winsize = 30

