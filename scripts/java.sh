echo
echo "Installing Java Development tools"
brew cask install java8
brew cask install jce-unlimited-strength-policy8
brew cask install intellij-idea --force # guard against pre-installed intellij
brew install maven
brew install gradle
brew install springboot

source ${MY_DIR}/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=intellij
popd