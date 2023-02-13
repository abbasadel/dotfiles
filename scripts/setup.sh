#!/bin/zsh

###### install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

###### install and congiure git
brew install git
git config --global user.name "Abbas Ibrahim"
git config --global user.email "abbas.adel.ibrahim@gmail.com"
#setting vscode as global editor
git config --global core.editor code


######  install essential commandline tools
brew install iterm2
xcode-select --install
brew install telnet
brew install tree
brew install watch


######  Installing ohmyZh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/too/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

p10k configure

#creating global .getignore
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore\n



#configure ssh
mkdir $HOME/.ssh
chmod 0700 $HOME/.ssh


###### install essential apps
brew install docker
brew install 1password
brew install 1password-cli
brew install visual-studio-code
brew install alfred
brew install notion



###### install dev tools

#installing sdkman and java
sdkman 
source "~/.sdkman/bin/sdkman-init.sh"
sdk install java
sdk install maven
sdk install kotlin
sdk install kscript
sdk install gradle
#install gradle code completion
git clone git://github.com/gradle/gradle-completion ~/.oh-my-zsh/plugins/gradle-completion


brew install jq
brew install node

 
