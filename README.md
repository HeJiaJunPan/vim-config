包管理器下载：
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
.vim路径下创建文件夹`plugged`：
```bash
mkdir plugged
```
下载配置：
```bash
git clone https://github.com/HeJiaJunPan/vim-config.git ~
```
移动文件：
```bash
mv ~/vim-config/.vimrc ~/vim-config/.vim ~
rm -rf ~/vim-config
```
