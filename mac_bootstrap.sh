if ! type "brew" > /dev/null; then
  echo "installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  echo "finalising brew install"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! type "python" > /dev/null; then
  echo "installing python"
  brew install python
fi

echo "installing Azure cli"
brew install azure-cli

echo "installing vscode"
brew install visual-studio-code

echo "installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing powerline fonts for ohmyzsh"
git clone git@github.com:powerline/fonts ../powerline_fonts
../powerline_fonts/install.sh

echo "moving zshrc"
cp zshrc ~/.zshrc


