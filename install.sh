#!/bin/bash

if [ -f $HOME/.vimrc ]
then
	echo ".vimrc already exists. replace (y/n)?"
	read replace
	if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
	then
		rm -f $HOME/.vimrc
		cp .vimrc $HOME
		echo "replaced existing .vimrc ..."
	else
		echo "skipped existing .vimrc ..."
	fi
else
	echo "no existing .vimrc. create (y/n)?"
	read create
	if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
	then
		cp .vimrc $HOME
		echo "created .vimrc ..."
	else
		echo "skipped ..."
	fi
fi

if [ -d $HOME/.vim ]
then
	echo ".vim dir already exists. replace (y/n)?"
	read replace
	if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
	then
		rm -rf $HOME/.vim
		mkdir -p $HOME/.vim && cp -r .vim/* $HOME/.vim
		echo "replaced existing ~/.vim ..."
	else
		echo "skipped existing ~/.vim ..."
	fi
else
	echo "no existing .vim dir. create (y/n)?"
	read create
	if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
	then
		mkdir -p $HOME/.vim && cp -r .vim/* $HOME/.vim
		echo "created .vim dir ..."
	else
		echo "skipped ..."
	fi
fi
