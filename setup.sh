cd ~
rm -f .bashrc .dir_colors .git-completion .git-prompt .gitconfig .tmux.conf .vimrc
rm -rf .vim
ln -s git/dotfiles/.bashrc ~/.bashrc
ln -s git/dotfiles/.dir_colors ~/.dir_colors
ln -s git/dotfiles/.git-completion ~/.git-completion
ln -s git/dotfiles/.git-prompt ~/.git-prompt
ln -s git/dotfiles/.gitconfig ~/.gitconfig
ln -s git/dotfiles/.tmux.conf ~/.tmux.conf
ln -s git/dotfiles/.vimrc ~/.vimrc
ln -s git/dotfiles/.vim ~/.vim
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim neobundle
git clone https://github.com/Shougo/unite.vim unite
