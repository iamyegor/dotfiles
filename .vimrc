:set number
:set relativenumber
:colorscheme slate

nnoremap <C-l> gk
nnoremap <C-h> gj

inoremap <C-BS> <C-w>

noremap <C-d> 10<C-e>
noremap <C-u> 10<C-y>

nmap j gj
nmap k gk

let mapleader = " "

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
hi StatusLine ctermbg=236 ctermfg=243
hi ModeMsg ctermbg=0 ctermfg=0

nnoremap <leader>p "0p
nnoremap <leader>P "0P
vnoremap <leader>p "0p
vnoremap <leader>P "0P

" Copy to clipboard
vnoremap <C-c> "+y
nnoremap <C-c> "+y
nnoremap <C-C> "+yg_
nnoremap <C-C><C-C> "+yy

" Paste from clipboard
nnoremap <C-v> "+p
nnoremap <C-V> "+P
vnoremap <C-v> "+p
vnoremap <C-V> "+P

