#!/bin/bash
#------------------------------------------------------------------------------
# Installation of the Microsoft Office
# Can be installed from both App Store or cask.
#------------------------------------------------------------------------------

mas install 409201541           # Pages
mas install 409203825           # Numbers
mas install 409183694           # Keynote
mas install 1310686187          # Scrivener 3

brew cask install notion
brew cask install marked

read -p "Do you want to install Microsoft Office from the App Store? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing Microsoft Office from the App Store..."
    mas install 462054704           # Microsoft Word
    mas install 462058435           # Microsoft Excel
    mas install 462062816           # Microsoft PowerPoint
    mas install 784801555           # Microsoft OneNote
    mas install 985367838           # Microsoft Outlook
    mas install 823766827           # OneDrive
else
    echo "Installing Microsoft Office from brew cask..."
    brew cask install microsoft-office
fi

