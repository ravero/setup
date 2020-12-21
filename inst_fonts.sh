## Fira Code - https://github.com/tonsky/FiraCode
## Install Instructions - https://github.com/tonsky/FiraCode/wiki/Installing
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install sf-symbols

BASE_RES_FOLDER="${HOME}/Library/Mobile Documents/com~apple~CloudDocs/Resources"

## Input
find "${BASE_RES_FOLDER}/Fonts/Input-Font" -name '*.ttf' -exec cp {} ~/Library/Fonts/ \;

cp "${BASE_RES_FOLDER}/Fonts/JosefinsSans/"*.ttf ~/Library/Fonts
cp "${BASE_RES_FOLDER}/Fonts/Montserrat/"*.ttf ~/Library/Fonts
cp "${BASE_RES_FOLDER}/Fonts/OpenSans/"*.ttf ~/Library/Fonts
cp "${BASE_RES_FOLDER}/Fonts/roboto-android/"*.ttf ~/Library/Fonts
