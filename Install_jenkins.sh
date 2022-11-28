#!/bin/bash
sudo apt update
sudo apt install default-jre
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sleep 5
sudo systemctl start jenkins
echo "Jenkins Installed and Running successfully"
sudo systemctl status jenkins
echo "If you see the msg "Active: active (exited)" above, then jenkins is sucessfully running"

