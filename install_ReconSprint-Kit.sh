#!/bin/bash

# Define installation directory
INSTALL_DIR="/opt/tools"

# Create the directory if it doesn't exist
mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

# Update package manager
sudo apt update
sudo apt upgrade -y

# Install Go (required for some tools)
sudo apt install golang-go -y

# 1-12: Tools that can be installed using Go
go install -v github.com/OWASP/Amass/v3@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/aboul3la/Sublist3r@latest
go install -v github.com/Edu4rdSHL/findomain@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install -v github.com/six2dez/securitytrails@latest
go install -v github.com/TheRook/subbrute@latest
go install -v github.com/cgboal/rapid7sonar@latest
go install -v github.com/crtsh/go-certificate-transparency@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install -v github.com/blechschmidt/massdns@latest
go install -v github.com/d3mondev/puredns@latest

# 13-21: Tools that need to be downloaded and compiled
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/naabu/cmd/naabu@latest
go install -v github.com/RustScan/RustScan@latest
go install -v github.com/Devploit/KatanaFramework@latest

# 22-43: Tools that can be installed using package manager
sudo apt-get install axiom
git clone https://github.com/fyoorer/ShadowClone.git
go install -v github.com/tomnomnom/anew@latest
go install github.com/tomnomnom/qsreplace@latest
sudo apt install golang git -y
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install github.com/ffuf/ffuf/v2@latest
go install github.com/Josue87/gotator@latest
go install github.com/sensepost/gowitness@latest
git clone https://github.com/jgor/dork-cli.git
wget https://cdn-2.webcatalog.io/webcatalog/WebCatalog-54.5.0.AppImage
sudo apt install dirbuster
git clone https://github.com/GerbenJavado/LinkFinder.git
git clone https://github.com/maK-/parameth.git
pip3 install arjun
docker pull clairvoyancedocker/clv:latest
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
git clone https://github.com/r0oth3x49/ghauri.git
git clone https://github.com/s0md3v/XSStrike.git
go install github.com/hahwul/dalfox/v2@latest
docker pull punksecurity/dnsreaper

# Display completion message
echo "All tools have been installed successfully!"
