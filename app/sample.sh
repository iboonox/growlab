#!/bin/bash
python3 app.py

export GIT_SSH_COMMAND="ssh -i $HOME/.ssh/id_rsa"

cp ${HOME}/growlab/app/html/* ${HOME}/growlab/docs/

git add .; git add -u

git commit -s -m "Update images at `date`"
git pull origin master --rebase
git push origin master

