#!/bin/bash
 
exists_file() {
	if [ -f $1 ]
		echo true
	fi
	echo false
}

exists_dir() {
	if [ -d $1 ]
		echo true
	fi
	echo false
}

if [ exists_file ~/.vimrc ]
	echo ".vimrc already exists. replace (y/n)? "
	read replace
	echo "\n"
	if [ replace == "y" || replace == "Y" || replace == "yes" ]
		sudo rm -f ~/.vimrc
		cp .vimrc ~/.
		echo "replaced existing .vimrc ...\n"
	fi
	echo "skipped existing .vimrc ...\n"
fi

if [ exists_dir ~/.vim ]
	echo ".vim dir already exists. replace (y/n)? "
	read replace
	echo "\n"
	if [ replace == "y" || replace == "Y" || replace == "yes" ]
		sudo rm -rf ~/.vim
		mkdir ~/.vim
		mkdir ~/.vim/colors
		mkdir ~/.vim/colors/base16
		cp .vim/colors/base16/*.vim ~/.vim/colors/base16
		echo "replaced existing ~/.vim ...\n"
	fi
	echo "skipped existing ~/.vim ...\n"
fi
