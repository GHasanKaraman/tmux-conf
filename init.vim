set rnu

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

let mapleader = "," " map leader to comma
nnoremap <leader>ll :Prettier<CR>
vnoremap <leader>ll :Prettier<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_enable_react_fragment = 0



inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

call plug#begin('~/.config/nvim/autoload/plugged')

"File Explorer
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'

"Auto Completion Like VsCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-scripts/vim-auto-save'

Plug 'tpope/vim-fugitive'
Plug 'sodapopcan/vim-twiggy'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

call plug#end()


colorscheme tokyonight-storm
