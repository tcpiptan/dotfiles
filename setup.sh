BACKUPDIR=~/.dotfiles.old/
DIRS=(.vim .vim/bundle .vim/dict)
FILES=(.bashrc .dir_colors .git-completion .git-prompt .gitconfig .rpmmacros .tmux.conf .vim/dict/php.dict .vimrc)

if [ -e $BACKUPDIR ]; then
    echo "backup still existing. exit.";
    exit;
else
    mkdir -p $BACKUPDIR
fi

for i in "${DIRS[@]}"
do
    src=~/git/dotfiles/$i
    dst=~/$i

    if [ -e $dst ]; then
        mv $dst $BACKUPDIR
    fi
    if [ ! -e $dst ]; then
        mkdir -p $dst
    fi
done

for i in "${FILES[@]}"
do
    src=~/git/dotfiles/$i
    dst=~/$i

    if [ -e $dst ]; then
        mv $dst $BACKUPDIR
    fi
    ln -s $src $dst
done

git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle
