#!/bin/sh
echo "Starting module called 01-sudoers" >> /tmp/progress.log

useradd webteam
echo redhat | passwd --stdin webteam
dnf install -y httpd
echo "webteam ALL=(ALL) NOPASSWD:systemctl httpd #THIS DOESN'T WORK -Scott" > /etc/sudoers.d/webteam-sudo