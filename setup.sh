FILES=(.bashrc .dir_colors .git-completion .git-prompt .gitconfig .rpmmacros .tmux.conf .vimrc .vim)

for i in "${FILES[@]}"
do
    src=$HOME/git/dotfiles/$i
    dst=$HOME/$i

    if [ -e $dst ]; then
        rm -rf $dst
    fi

    echo "----"
    echo $src
    echo $dst
    ln -s $src $dst
done

mkdir -p $HOME/.vim/bundle

wget -O $HOME/.vim/bundle/neobundle.zip https://github.com/Shougo/neobundle.vim/archive/master.zip
unzip $HOME/.vim/bundle/neobundle.zip -d $HOME/.vim/bundle/
mv $HOME/.vim/bundle/neobundle{.vim-master,}
rm $HOME/.vim/bundle/neobundle.zip

wget -O $HOME/.vim/bundle/unite.zip https://github.com/Shougo/unite.vim/archive/master.zip
unzip $HOME/.vim/bundle/unite.zip -d $HOME/.vim/bundle/
mv $HOME/.vim/bundle/unite{.vim-master,}
rm $HOME/.vim/bundle/unite.zip
