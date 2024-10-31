#!/bin/bash
set -ex

dnf update -y

dnf install -y git vim httpd
# sudo dn

mkdir -p /var/www/html

GITHUB_URL="https://raw.githubusercontent.com/65d/simple-html-for-task-2-devops/main/index.html"
curl -o /var/www/html/index.html "$GITHUB_URL"

systemctl enable httpd
systemctl start httpd

dnf install -y firewalld
systemctl enable firewalld
systemctl start firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --reload