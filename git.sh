#!/bin/bash
git config --global push.default simple
git config --global user.name "Marc Druckenmueller"
git config --global user.email marc.druckenmueller@gmail.com
git config credential.https://github.com.username marc.druckenmueller@gmail.com
git config credential.helper 'cache --timeout=3600'

if [[ `dpkg -s gitk | grep Status | grep 'install ok'` ]]
then
    echo -e "\tGitk is already installed"
else
    sudo apt-get install gitk
fi

