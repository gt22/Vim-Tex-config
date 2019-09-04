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

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoread

:color elflord
:hi Conceal ctermbg=NONE ctermfg=5
let fname = expand('%:p:h')
if fname =~ '\vhse/(courses|homework)'
    let $VIM_TMP_PATH=fname
endif
let $CUR_VIM_SNIPS='algebra'
set rtp+=~/.vim_snips/$CUR_VIM_SNIPS,~/.vim_snips/main
