#! /bin/bash
#------------------
# This script install snippets and settings for Visual Studio Mac.
#------------------

snippets_folder="${HOME}/Library/VisualStudio/8.0/Snippets/"

# Create Snippets folder if it doesn't exists
if [[ ! -d "${snippets_folder}" ]]; then
  echo "Creating Snippets folder for VSMac 2019"
  mkdir "${snippets_folder}"
fi

echo "Copying Snippets to VS2019..."
cp -rfv data/visual-studio/code-snippets/* "${snippets_folder}"