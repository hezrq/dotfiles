git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -sfv ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
export PATH="$HOME/.linuxbrew/bin:$PATH"

brew install gcc
brew install sudo
brew install curl
brew install bat
brew install exa
brew install docker
brew install docker-compose
