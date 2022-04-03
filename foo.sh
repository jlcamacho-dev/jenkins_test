#!/bin/sh

KERNEL_VERSION='3.15.06.el7.x86'
KER=$(uname -r)
echo $KER

if [[ $KERNEL_VERSION == *"el7"* ]]; then
    echo "RHEL 7"
    mkdir repo
    touch repo/rhel7.repo
    cat >repo/rhel7.repo <<EOL
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/6Server/mongodb-‌​org/3.6/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
EOL
fi 

# string='My long string'
# if [[ $string == *"My long"* ]]; then
#   echo "It's there!"
# fi
