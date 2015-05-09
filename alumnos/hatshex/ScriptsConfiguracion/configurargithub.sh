git config --global user.name "hatshex"
git config --global user.email "hatshex@gmail.com"
git config --global color.ui "auto"
git config --global core.editor "emacs"
sudo mkdir big-data-test
cd big-data-test
git init
git clone https://github.com/hatshex/big-data.git
git pull origin master
git remote add repo-clase https://github.com/ITAM-DS/big-data.git
