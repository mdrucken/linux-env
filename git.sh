#!/bin/bash
git config --global push.default simple
git config --global user.name "Marc Druckenmueller"
git config --global user.email marc.druckenmueller@gmail.com
git config credential.https://github.username marc.druckenmueller@gmail.com
git config credential.helper 'cache --timeout=3600'
