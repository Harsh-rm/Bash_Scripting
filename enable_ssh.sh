#!/bin/bash - Run script -> ./enable_ssh.sh

# Installing OpenSSH server
# sudo apt install openssh-server -y

# Enable and start the SSH service and socket in the correct order
echo "Enabling SSH socket..."
sudo systemctl enable ssh.socket

echo "Starting SSH socket..."
sudo systemctl start ssh.socket

echo "Enabling SSH service..."
sudo systemctl enable ssh

echo "Starting SSH service..."
sudo systemctl start ssh

# echo "Re-starting SSH service..."
# sudo systemctl restart ssh

echo "SSH service and socket enabled and started successfully."
sudo systemctl status ssh
