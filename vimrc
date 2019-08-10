call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=2
set concealcursor=nc
let g:tex_conceal='abdmg'



Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()


:color elflord
:hi Conceal ctermbg=NONE ctermfg=5
