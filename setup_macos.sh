CURDIR="$(cd "$(dirname "$0")"; pwd -P)"
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
mkdir -p ~/Library/texmf/tex
rm -f ~/Library/texmf/tex/latex
ln -s $CURDIR/preamble ~/Library/texmf/tex/latex
mkdir -p ~/.vim/
rm -f ~/.vim/UltiSnips
ln -s $CURDIR/snips/main ~/.vim/UltiSnips
rm -f ~/.vimrc
ln -s $CURDIR/vimrc ~/.vimrc
vim +PlugInstall +qall
