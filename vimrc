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
set wildignore+=*/node_modules/**,*/.git/**,*/dist/**,*/target/**,*.png,*.jpg,*.jpeg,*.svg,*.gif,*.ttf,*.otf
set laststatus=2
set noshowmode
set nowrap
set re=0
set updatetime=300

let mapleader=","
noremap \ ,

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

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-rust-analyzer', '@yaegassy/coc-volar']
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
let g:netrw_liststyle=3

packadd! vim-wordmotion
packadd! vim-vue-plugin

" Show json quote
let g:vim_json_conceal = 0
