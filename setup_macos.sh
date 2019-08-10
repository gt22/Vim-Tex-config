CURDIR="$(cd "$(dirname "$0")"; pwd -P)"
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
mkdir -p ~/Library/texmf/tex
ln -s $CURDIR/preamble ~/Library/texmf/tex/latex
mkdir -p ~/.vim/
ln -s $CURDIR/snips/main ~/.vim/UltiSnips
ln -s $CURDIR vimrc ~/.vimrc
vim +PlugInstall +qall
