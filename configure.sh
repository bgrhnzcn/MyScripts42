
#Installs .bashrc file.
BASHRC="$HOME/.bashrc"
DOT="$HOME/dot"
if [[ ! -f $BASHRC ]]; then
    git clone git@github.com:bgrhnzcn/dotfiles.git 
    mv $DOT/.bashrc $BASHRC
    rm -rf $DOT
fi
#Installs Powerline font for monospace.
FONTS="$HOME/fonts"
if [[ ! -d "/home/buozcan/.local/share/fonts" ]]; then
    git clone https://github.com/powerline/fonts.git --depth=1 $FONTS
    bash $FONTS/install.sh
    rm -rf $FONTS
fi
#Install miniRT
MINIRT="$HOME/Documents/miniRT"
if [[ ! -d "$MINIRT" ]]; then
	git clone git@github.com:bgrhnzcn/miniRT.git $MINIRT
	ln -s $MINIRT $HOME/minirt
fi
#Install gl42
GL42="$HOME/goinfre/GL42Demo"
if [[ ! -d "$GL42" ]]; then
	git clone git@github.com:bgrhnzcn/GL42Demo.git $GL42
	ln -s $GL42 $HOME/gl42
fi
#Install scop
SCOP="$HOME/goinfre/scop42"
if [[ ! -d "$SCOP" ]]; then
	git clone git@github.com:bgrhnzcn/scop42.git $SCOP
	ln -s $SCOP $HOME/scop
fi