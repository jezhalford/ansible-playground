#!/bin/sh
cat << EOF > /etc/ansible/hosts
[local]
localhost

[playground]
host

EOF

cat << EOF >> /etc/hosts
33.33.33.11 host

EOF
