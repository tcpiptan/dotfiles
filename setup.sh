FILES=(.bashrc .dir_colors .git-completion .git-prompt .gitconfig .rpmmacros .tmux.conf .vimrc)

for i in "${FILES[@]}"
do
    src=~/git/dotfiles/$i
    dst=~/$i

    if [ -e $dst ]; then
        rm -rf $dst
    fi
    ln -s $src $dst
done

rm -rf ~/.vim/bundle
mkdir -p ~/.vim/{dict,bundle}

ln -s ~/git/dotfiles/.vim/dict/php.dict ~/.vim/dict/php.dict

git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle
