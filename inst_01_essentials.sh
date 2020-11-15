#!/bin/bash
# Setup Scripts - 01 Basic Stuff
#------------------------------------------------------------------------------
# Homebrew and Base required formulaes
#------------------------------------------------------------------------------

## References
## - Snazzy Labs Homebrew Tips - https://www.youtube.com/watch?v=Ym2pxzWpTNw&t=19s / https://pastebin.com/jV9XzPrs

## Homebrew
## - Last updated command:  24/03/2020

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install mas                            # mas-cli - https://github.com/mas-cli/mas - Required for app store script

mas install 1333542190	        # 1Password
mas install 937984704           # Amphetamine
