#!/bin/bash -eu

# See: https://golang.org/doc/install#install

if [ -d "/usr/local/go" ]
then
	echo "$(go version) is already installed."
	exit
fi

goarch="go1.5.3.linux-amd64.tar.gz"
if [ ! -e $goarch ]
then
	curl -O "https://storage.googleapis.com/golang/$goarch"
fi

sudo tar -C /usr/local -xzf $goarch
mkdir -p ~/gopath

go version
