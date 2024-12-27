#/bin/bash

BASH_RC=${PWD}/.bashrc

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

if [ ! -d $BACKUP_DIR ];
then
    mkdir -p $BACKUP_DIR
fi

# .bashrc
# remove .bashrc
if [ -f ${HOME}/.bashrc ]; then
    mv ${HOME}/.bashrc ${BACKUP_DIR}/.bashrc
fi

# add symbolic link
ln -s ${BASH_RC} ~/.bashrc