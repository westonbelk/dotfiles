default:

init: packages neovim-addons powerline-addons

uninstall: uninstall-configs

packages:
	sudo dnf install -y $(grep "^[^#]" dnf-packages.txt)


neovim-addons:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	pip2 install --user pynvim
	pip3 install --user pynvim

powerline-addons:
	pip install --user powerline-gitstatus


# Install configs
install-configs:
	stow --verbose=1 -d configs/ -t ~ neovim
	stow --verbose=1 -d configs/ -t ~ powerline
	stow --verbose=1 -d configs/ -t ~ tmux
	stow --verbose=1 -d configs/ -t ~ bash
	stow --verbose=1 -d configs/ -t ~ inputrc


uninstall-configs:
	stow --verbose=1 --delete -d configs/ -t ~ neovim
	stow --verbose=1 --delete -d configs/ -t ~ powerline
	stow --verbose=1 --delete -d configs/ -t ~ tmux
	stow --verbose=1 --delete -d configs/ -t ~ bash
	stow --verbose=1 --delete -d configs/ -t ~ inputrc
