" vim-plug
call plug#begin('~/.cache/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'cohama/lexima.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'ntpeters/vim-better-whitespace'
Plug 'prabirshrestha/vim-lsp'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" on-demand loading
Plug 'JuliaEditorSupport/julia-vim', { 'for': 'julia' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript.tsx' }
Plug 'previm/previm', { 'for': 'markdown' }
Plug 'qnighy/satysfi.vim', { 'for': 'satysfi' }
Plug 'tyru/open-browser.vim', { 'for': 'markdown' }

call plug#end()

" load plugin settings
source ~/.config/nvim/plugins/deoplete.rc.vim
source ~/.config/nvim/plugins/indentLine.rc.vim
source ~/.config/nvim/plugins/lightline.rc.vim
source ~/.config/nvim/plugins/fzf.rc.vim
source ~/.config/nvim/plugins/vim-lsp-settings.rc.vim
source ~/.config/nvim/plugins/vim-lsp.rc.vim
source ~/.config/nvim/plugins/csv.rc.vim
source ~/.config/nvim/plugins/vim-json.rc.vim

" load theme
colorscheme iceberg
syntax on

highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE
highlight clear SignColumn
highlight GitGutterAdd ctermbg=NONE
highlight GitGutterChange ctermbg=NONE
highlight GitGutterDelete ctermbg=NONE
highlight GitGutterChangeDelete ctermbg=NONE

let g:python3_host_prog = '/usr/bin/python'

nnoremap <silent> O :<C-u>call append(expand('.'), '')<Cr>j
nnoremap <silent> st :tabnew<Cr>:Defx<Cr>
inoremap <silent> jj <ESC>

map <Space> <Leader>

set number

set updatetime=100

set scrolloff=10

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamed

set guifont=JetBrains\ Mono:h8
if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \   'initialization_options': {
        \     'cargo': {
        \       'loadOutDirsFromCheck': v:true,
        \     },
        \     'procMacro': {
        \       'enable': v:true,
        \     },
        \   },
        \ })
endif
autocmd BufNewFile,BufRead *.jl set filetype=julia
autocmd BufNewFile,BufRead *.sh set filetype=bash
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
