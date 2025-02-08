#/bin/bash

BASH_RC=${PWD}/.bashrc

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"


# get this file dir
script_path=$(readlink -f "$0")
script_dir=$(dirname "$script_path")


if [ ! -d $BACKUP_DIR ];
then
    mkdir -p $BACKUP_DIR
fi



# .bashrc
# remove .bashrc
if [ -f ${HOME}/.bashrc ]; then
    mv ${HOME}/.bashrc ${script_dir}/.bashrc
    rm ~/.bashrc
fi

# add symbolic link
ln -s "${script_dir}/.bashrc" ~/.bashrc
