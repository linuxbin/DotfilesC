#!/bin/bash
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done
 if hash vim-addon  2>/dev/null; then
         echo "vim-addon (vim-scripts)  installed"
     else
         echo "vim-addon (vim-scripts) not installed, running 'sudo yum update; sudo yum install bc'"
         sudo yum update; sudo yum install vim-scripts
fi

echo "Installed"
