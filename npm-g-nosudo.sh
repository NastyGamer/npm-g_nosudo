if test -e "$HOME/.npm-packages"; then
    echo "Already installed"
    exit 0
fi

mkdir "${HOME}/.npm-packages"
npm config set prefix "${HOME}/.npm-packages"

if test -e "$HOME/.bashrc"; then
  echo "Installing for bash"
  { echo "NPM_PACKAGES=\"${HOME}/.npm-packages\""; echo "export PATH=\"$PATH:$NPM_PACKAGES/bin\""; echo "export MANPATH=\"${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man\""; } >> ~/.bashrc
fi

if test -e "$HOME/.zshrc"; then
  echo "Installing for zsh"
  { echo "NPM_PACKAGES=\"${HOME}/.npm-packages\""; echo "export PATH=\"$PATH:$NPM_PACKAGES/bin\""; echo "export MANPATH=\"${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man\""; } >> ~/.zshrc
fi