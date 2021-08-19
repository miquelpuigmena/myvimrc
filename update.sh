#!/bin/bash

# Update vimrc file
cp ./vimrc ~/.vimrc
# Update helpers folder in main .vim folder
cp -r ./helpers/* ~/.vim/helpers
# Update snippets
cp -r ./mysnippets/*.snippets ~/.vim/mysnippets
