#!/bin/bash 

yum install git

# Install k3s 
curl -sfL https://get.k3s.io | sh -

# Download the latest version of Helm using the following command
wget https://get.helm.sh/helm-v3.6.0-linux-amd64.tar.gz

# unpack the Helm file using the tar command
tar xvf helm-v3.6.0-linux-amd64.tar.gz 

#Move the linux-amd64/helm file to /usr/local/bin directory
sudo mv linux-amd64/helm /usr/local/bin

# check helm version
helm version