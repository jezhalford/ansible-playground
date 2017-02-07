#!/bin/sh
cat << EOF > /etc/ansible/hosts
[local]
localhost

[playground]
33.33.33.11

EOF
