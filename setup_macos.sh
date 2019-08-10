CURDIR="$(cd "$(dirname "$0")"; pwd -P)"
mkdir -p ~/Library/texmf/tex
ln -s $CURDIR/preamble ~/Library/texmf/tex/latex
mkdir -p ~/.vim/
ln -s $CURDIR/snips/main ~/.vim/UltiSnips
ln -s $CURDIR vimrc ~/.vimrc
