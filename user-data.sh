#!/bin/bash

apt update -y
apt install nginx -y

systemctl enable nginx
systemctl start nginx

cat <<EOF > /var/www/html/index.html
<h1>Terraform AWS Web Server</h1>
<p>Deployed using Infrastructure as Code</p>
EOF
