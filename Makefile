 
git:
	sudo yum install -y git

git-uninstall:
	sudo yum remove -y git
# Install k3s
k3s-install:
	curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644

k3s-uninstall:
	/usr/local/bin/k3s-uninstall.sh

helm-install:
# Download the latest version of Helm using the following command
	wget https://get.helm.sh/helm-v3.6.0-linux-amd64.tar.gz
# unpack the Helm file using the tar command
	tar xvf helm-v3.6.0-linux-amd64.tar.gz 
#Move the linux-amd64/helm file to /usr/local/bin directory
	sudo mv linux-amd64/helm /usr/local/bin
# check helm version
	helm version
