if ! type "brew" > /dev/null; then
  echo "installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! type "python" > /dev/null; then
  echo "installing python"
  brew install python
fi

echo "installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing powerline fonts for ohmyzsh"
git clone git@github.com:powerline/fonts ../powerline_fonts
../powerline_fonts/install.sh

## todo: move zshrc file across
