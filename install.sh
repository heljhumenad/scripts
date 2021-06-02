echo "Install Scripts for Setup of Web Development on Linux"

echo "Update Dependencies of Machine"
sudo pacman -Syuu

echo "Change login shell to zsh"
chsh -s $(which zsh)

echo "Download and Install Oh-my-ZSH plugins Manager"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install Neovim"
sudo pacman -Sy neovim

echo "Install Vim-Plug Minimalist Plugin Manager"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Create vim plugged for Neovim"
cd ~/.config/
mkdir nvim
cd nvim
mkdir plugged
cd ~/

echo "Clone repo for .vimrc"
cd ~/Desktop
git clone https://github.com/heljhumenad/config.vim.git
cd config.vim

echo "Move init.vim to .vimrc folder for Neovim"
sudo mv init.vim ~/.config/nvim/

echo "Install Docker"
sudo pacman -Sy docker

