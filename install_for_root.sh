if [ ! "$(whoami)" = "root" ]
then
    echo "this script requires superuser privileges."
    exit -1 
fi

if [ -f /root/.vimrc ]
then    
    echo "root user .vimrc already exists. replace (y/n)?"
    read replace
    if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
    then
	rm -f /root/.vimrc
	cp .vimrc /root
	echo "replaced existing root user .vimrc ..."
    else
	echo "skipped existing root user .vimrc ..."
    fi
else
    echo "no existing root user .vimrc. create (y/n)?"
    read create
    if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
    then
	cp .vimrc /root
	echo "created root user .vimrc ..."
    else
	echo "skipped ..."
    fi
fi

if [ -d /root/.vim ]
then
    echo "root user .vim dir already exists. replace (y/n)?"
    read replace
    if [ "$replace" == "y" ] || [ "$replace" == "Y" ] || [ "$replace" == "yes" ] 
    then
	rm -rf /root/.vim
	mkdir -p /root/.vim && cp -r .vim/* /root/.vim
	echo "replaced existing root user ~/.vim ..."
    else
	echo "skipped existing root user ~/.vim ..."
    fi
else
    echo "no existing root user .vim dir. create (y/n)?"
    read create
    if [ "$create" == "y" ] || [ "$create" == "Y" ] || [ "$create" == "yes" ]
    then
	mkdir -p /root/.vim && cp -r .vim/* /root/.vim
	echo "created root user .vim dir ..."
    else
	echo "skipped ..."
    fi
fi

