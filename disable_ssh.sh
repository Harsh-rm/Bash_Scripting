#!/bin/bash

# Stop and disable the SSH service and socket in the correct order
echo "Stopping SSH service..."
sudo systemctl stop ssh

echo "Disabling SSH service..."
sudo systemctl disable ssh

echo "Stopping SSH socket..."
sudo systemctl stop ssh.socket

echo "Disabling SSH socket..."
sudo systemctl disable ssh.socket

echo "SSH service and socket stopped and disabled successfully."
sudo systemctl status ssh
