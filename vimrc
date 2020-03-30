call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'



let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : '/Users/gt22/Documents/workspace/tex/builds' . substitute(getcwd(), '/Users/gt22/Documents/workspace/tex', '', '')
            \}

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=2
set concealcursor=nc
let g:tex_conceal='abdmg'



Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'isobit/vim-darcula-colors'
call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoread
set nu
set backspace=indent,eol,start
:color darcula
:hi! link Conceal texMath
:hi Todo ctermbg=233 ctermfg=11
:call matchadd('Conceal','\\limits',10,-1,{'conceal': ''})
let fname = expand('%:p:h')
if fname =~ '\vhse/(courses|homework)'
    let $VIM_TMP_PATH=fname
endif
set rtp+=~/.vim_snips/$CUR_VIM_SNIPS,~/.vim_snips/main
